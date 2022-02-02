# Bootstrap 5 Templates for Silverstripe 4

## Introduction

This module aims to be a (mostly) unopinionated set of form templates to mark up Silverstripe frontend forms (both custom and [Userforms](https://github.com/silverstripe/silverstripe-userforms)) to be compatible with [Bootstrap 5's form styles](https://getbootstrap.com/docs/5.0/forms/overview/).

## Maintainer Contact

 * James Cocker (ssmodulesgithub@pswd.biz)
 
## Requirements

 * Silverstripe 4
 * Bootstrap 5 already installed in your theme

## Installation

1. Install using `composer`:
````
composer require purplespider/silverstripe-bootstrap-form-templates
````

2. Run `dev/build`

3. Add as the FIRST theme in your `app/_config/theme.yml`:
````yml
    - purplespider/bootstrap-form-templates:bootstrap-form-templates
````

e.g.:
````yml
---
Name: mytheme
---
SilverStripe\View\SSViewer:
  themes:
    - purplespider/bootstrap-form-templates:bootstrap-form-templates
    - '$public'
    - 'simple'
    - '$default'
````

4. To make Bootstrap's validation error styling work, add this SCSS to your theme:
````scss
form {
    .error.message {
        @extend .invalid-feedback;
        display: block;
    }
    
    .form-control,
    .form-select,
    .form-check-input {
        &.error {
            @extend .is-invalid;
        }
    }
}
````

## Opinionated SCSS (optional)

These are some opionated styles that I like to start with:
````scss
// Opinionated Styles
form {
    max-width: 400px !important;
    margin-top: $spacer * 2;

    // "Required" label
    .help-text {
        color: $gray-500;
        padding-left: .25em;
        font-weight: normal;
    }
    
    // Add spacing between different fields
    .form-group {
        margin-bottom: $spacer * 2 !important; // Overrides "mb-3"
    }

    // Style field labels
    .form-label {
        font-weight: $font-weight-bold;
        color: $gray-700;
    }

    // Style Headings, e.g. HeaderField
    .FormHeading {
        border-bottom: 2px solid $gray-200;
        padding-bottom: $spacer / 2;
        margin-top: $spacer * 4;
        margin-bottom: $spacer * 2;
    }

    // Adds a "required" legend
    &:after {
        content: "* indicates required";
        display: block;
        margin-top: $spacer * 2;
    }
}
````

## Using Rows & Columns for Form Layout

By grouping fields into a `row` using a `FieldGroup`, you can then apply `col` classes to fields, e.g.

````php
FieldGroup::create(
    TextField::create('FirstName', 'First Name')->addExtraClass('col'),
    TextField::create('Surname', 'Last Name')->addExtraClass('col'),
)->addExtraClass('row');
````

## How It Works

For full control, this module provides a complete set of form field templates, which override the default ones provided by Silverstripe and Userforms.

The templates are added as an extra theme to your site, so that they do not affect the form field in the CMS.

## Handling of `RightTitle` and `Description`

Any `Description` text is added after the field, as per the default templates.

As the Userforms module uses `RightTitle` and not `Description`, this is also added after the field for consistency. So in your custom coded forms, you can use either (but you shouldn't use both).

## Alternative Install (By Copying)

Rather than installing this via `composer` as a module that can't be edited, you can also just copy the files into your theme, allowing to then make any customisations (e.g. moving `Description` *before* the field.)

To do so, just copy the `PurpleSpider` and `SilverStripe` directories (within `themes\bootstrap-form-templates\templates`) into your theme's `templates` directory.

## TODO

Please note: This module is currently a work-in-progress. I've still to:
- [ ] Check certain form fields for WAI compliance, such as radio and checkbox groups.
- [ ] Add styles for Userforms multi-page forms.
- [ ] Refine handling of "required" labels.
- [ ] Refine the ability to use `FormGroup` and `addExtraClass` to layout fields in rows and columns.
