/* mhGlobalCss.css */
:root {
    /** colours */

    --color-tarion-blue-80: #486CA3;
    --color-tarion-blue: #093678;
    --color-tarion-yellow-60: #FFD27C;
    --color-tarion-yellow-80: #FEC54E;
    --color-tarion-yellow: #FFB300;
    --color-tarion-yellow-light: #F8D388;
    --color-error-red-sf: #C23934;
    --color-black-text: #1A1B1E;
    --color-dark-text: #333333;
    --color-blue-header-text: #153774;
    --color-blue-text: #27588D;
    --color-light-text: #FFFFFF;
    --color-dark-text: #333333;
    --color-blue-border: #ADBCD2;
    --color-gray-border: #DDDBDA;
    --color-palette-gray: #F3F2F2;
    --color-footer-blue: #27588D;
    --color-light-blue: #C6D3EC;
    --color-light-blue-header: #E8EDF7;
    --color-disabled-button-text: #7CA3DC;
    --color-success-green: #2E844A;
    --color-black-60: #3E3E3C;
    --color-edited-yellow: #FFDFA4;
    --color-box-shadow: #B6B6B6;
    --color-gray-subtext: #706E6B;
    --color-message-banner: #FF9A3C;
    --color-selection-background: #BBD6FB;

    /** fonts */
    --font-website-family: Roboto, Avenir, Arial;

    /** primary styling */
    --dxp-s-section-columns-max-width: none;
    --dxp-c-section-content-spacing-inline-end: 0;
    --dxp-c-section-content-spacing-inline-end-mobile: 0;
    --dxp-c-section-content-spacing-inline-start: 0;
    --dxp-c-section-content-spacing-inline-start-mobile: 0;

    --dxp-c-selection-color-background: var(--color-selection-background);
    --dxp-c-selection-text-shadow: none;
    --dxp-c-selection-text-color: var(--color-black-text);

    --dxp-s-text-heading-extra-large-font-family: var(--font-website-family);
    --dxp-s-text-heading-large-font-family: var(--font-website-family);
    --dxp-s-text-heading-medium-font-family: var(--font-website-family);
    --dxp-s-text-heading-small-font-family: var(--font-website-family);
    --dxp-s-body-font-family: var(--font-website-family);
    --dxp-s-body-line-height: 1.17;
    --dxp-s-body-small-font-family: var(--font-website-family);
    --dxp-s-button-font-family: var(--font-website-family);
    --dxp-s-link-text-color: var(--color-blue-text);

    --dxp-g-success: var(--color-success-green);
    --dxp-g-success-contrast: white;

    /* primary button */
    --sds-c-button-neutral-color-background : var(--color-tarion-yellow-light);
    --sds-c-button-neutral-color-background-hover : var(--color-tarion-yellow-80);
    --sds-c-button-neutral-color-border : var(--color-tarion-yellow-light);
    --sds-c-button-neutral-color-border-hover : var(--color-tarion-yellow-80);
    --sds-c-button-text-color: #000000;
    --sds-c-button-text-color-hover: #000000;

    /* use this for content that needs a max width */
    --mh-s-content-max-width: 1800px;

    /* form element widths */
    --mh-c-element-width-xx_small: 4rem;
    --mh-c-element-width-x_small: 8rem;
    --mh-c-element-width-small: 11rem;
    --mh-c-element-width-medium: 13.75rem;

    /* logo, social media, links, plus padding */
    --mh-mobile-footer-height: calc(2rem + 2rem + 51px + 2rem + 50px + 2rem + (5 * (1rem + 1.3125rem)));
    /* full height minus the header and footer and padding */
    --mh-mobile-min-container-height: calc(100vh - 3rem - 2rem - (var(--mh-mobile-footer-height) + 40px));
}

body {
    font-family: var(--font-website-family);
}

html {
    scroll-behavior: smooth;
}

h1 {
    font-size: 2rem;
    font-weight: 900;
    color: var(--color-blue-header-text);
}

h2 {
    font-size: 1.5rem;
    font-weight: bold;
}

h3 {
    font-size: 1.125rem;
    font-weight: 900;
}

h4 {
    font-size: 0.875rem;
    font-weight: 900;
}

@media (max-width: 1023px) {
    h3, h4 {
        font-weight: 700;
    }
}

footer {
    --dxp-c-section-columns-max-width: none;
}

@media print {
    footer {
        display: none;
    }
}

/* Desktop and mobile views */
@media (min-width: 1024px) {
    .mh-hide_large {
        display: none !important;
    }
}

@media only screen and (max-width: 1023px) {
    .mh-show_large {
        display: none !important;
    }
}

@media only screen and (min-width: 768px) and (max-width: 1023px) {
    .mh-hide_tablet {
        display: none !important;
    }
}

@media only screen and (max-width: 767px) or (min-width: 1024px) {
    .mh-show_tablet {
        display: none !important;
    }
}

@media print {
    .mh-hide_large {
        display: none !important;
    }
}

.mh-page-container {
    margin: 4rem 7.5rem;
}

@media (min-width: 1900px) {
    .mh-page-container {
        margin: 4rem 12.5%;
    }
}

@media (max-width: 1023px) {
    .mh-page-container {
        display: flex;
        flex-direction: column;
        margin: 2rem 2rem 0 2rem;
        /* full height minus the header and footer and padding */
        min-height: var(--mh-mobile-min-container-height);
    }

    .mh-mobile-flexer {
        flex: 1;
    }

    .form-container-mobile-content .slds-rich-text-editor__output {
        line-height: 1.17;
    }

    .form-container-mobile-content .slds-rich-text-editor__output h4 {
        font-size: 1.125rem;
        font-weight: 700;
    }
}

@media (max-width: 767px) {
    .mh-page-container .mh-form-element {
        max-width: calc(100vw - 4rem);
    }
}

.slds-theme_clock {
    background-color: var(--color-tarion-yellow);
    border-color: var(--color-tarion-yellow);
    color: var(--color-black-text);
}

.slds-theme_clock a:not(.slds-button--neutral) {
    color: var(--color-black-text);
    text-decoration: underline;
}

.slds-theme_clock a:not(.slds-button--neutral):link, .slds-theme_clock a:not(.slds-button--neutral):visited {
    color: var(--color-black-text);
    text-decoration: underline;
}

.slds-theme_clock.slds-notify .slds-icon {
    fill: var(--color-black-text);
}

.slds-notify.slds-theme_clock a:focus {
    border: 1px solid var(--color-black-text);
    box-shadow: 0 0 3px var(--color-black-text);
}

@media (max-width: 767px) {
    .mh-mobile-toast {
        margin: 0;
        min-width: var(--slds-c-toast-sizing-min-width,var(--sds-c-toast-sizing-min-width,(100%)));
    }
}

@media only screen and (max-width: 767px) {
    .slds-form-element__legend {
        margin-bottom: 0rem;
    }
}

.mh-page-header h1 {
    line-height: 1;
}

.mh-header-text {
    color: var(--color-blue-header-text);
}

.blue-text {
    color: var(--color-blue-text);
}

/* Tables */
.slds-table_header-fixed_container {
    background-color: var(--color-light-blue-header) !important;
}

.slds-table {
    --dxp-s-button-font-size: 0.875rem;
    --sds-c-button-text-color: var(--color-black-text);
}

.slds-table .slds-button__icon {
    --slds-c-icon-color-foreground: var(--color-black-text);
    height: 1.25rem;
    width: 1.25rem;
}

.slds-table .mh-table-button-link .slds-button {
    color: var(--color-blue-text);
}

.slds-table .mh-table-button-link-bold .slds-button {
    color: var(--color-blue-text);
    font-weight: 700;
}

.slds-table .slds-th__action, .slds-table .slds-th__action:hover {
    color: var(--color-black-text);
    background-color: var(--color-light-blue-header) !important;
}

.slds-table .slds-has-focus .slds-th__action {
    color: var(--color-black-text);
    background-color: var(--color-light-blue-header) !important;
    box-shadow: none;
}

.slds-table tr:nth-child(even) {
    color: var(--color-black-text);
    background-color: #F7F7F7;
}

.slds-table tr:nth-child(odd) {
    color: var(--color-black-text);
    background-color: #FFFFFF
}

.slds-table thead tr > th .slds-cell-fixed {
    width: auto !important;
}

.slds-table tbody tr:hover > th {
    background-color: inherit !important;
}

.slds-table tbody tr:hover > td {
    background-color: inherit !important;
}

.slds-table .slds-cell-edit svg,
.slds-table .slds-cell-edit:focus svg,
.slds-table .slds-cell-edit:hover svg {
    fill: unset !important;
    opacity: 1 !important;
}

.slds-table .slds-cell-edit.slds-is-edited, .slds-table .slds-cell-edit.slds-is-edited:hover {
    background-color: var(--color-edited-yellow);
}

.slds-table .slds-cell-edit.slds-has-error, .slds-table .slds-cell-edit.slds-has-error:hover {
    background-color: var(--color-edited-yellow);
    box-shadow: var(--color-error-red-sf) 0 0 0 2px inset;
}

.slds-is-edited {
    background: var(--color-edited-yellow);
}

.slds-has-error {
    border-color: var(--color-edited-yellow);
}

.mh-saved-items-table .slds-table_header-fixed_container {
    background-color: var(--color-gray-border) !important;
}

.mh-saved-items-table .slds-table .slds-th__action, .mh-saved-items-table .slds-th__action:hover {
    color: var(--color-black-text);
    background-color: var(--color-gray-border) !important;
}

.mh-saved-items-table .slds-table .slds-has-focus .slds-th__action {
    color: var(--color-black-text);
    background-color: var(--color-gray-border) !important;
    box-shadow: none;
}

.mh-auto-width-table .slds-table_header-fixed_container.slds-scrollable_x {
    overflow-x: auto !important;
}

.mh-auto-width-table .slds-table_header-fixed_container .slds-scrollable_y {
    overflow-x: auto !important;
    width: 100% !important;
}

.mh-auto-width-table .slds-table_header-fixed.slds-table_edit {
    table-layout: auto !important;
    width: 100% !important;
}

.mh-auto-width-table .slds-table .slds-has-focus .slds-th__action {
    box-shadow: none;
}

.mh-attachment-data-table {
    --dxp-s-button-font-weight: 700;
    --sds-c-button-text-color: var(--color-blue-text);
}

/* Inline editor buttons */
.slds-docked-form-footer .slds-button_neutral {
    background-color: #FFFFFF;
    border-color: var(--color-tarion-blue);
    color: var(--color-tarion-blue);
    font-size: 0.875rem;
    transition: border 0s;
}

.slds-docked-form-footer .slds-button_neutral:hover {
    background-color: var(--color-light-blue);
    border-color: var(--color-tarion-blue);
    color: var(--color-tarion-blue);
    font-size: 0.875rem;
}

.slds-docked-form-footer .save-btn {
    background-color: var(--color-tarion-blue-80);
    border-color: var(--color-tarion-blue-80);
    color: #FFFFFF;
    font-size: 0.875rem;
}

.slds-docked-form-footer .save-btn:hover {
    background-color: var(--color-tarion-blue);
    border-color: var(--color-tarion-blue);
    color: #FFFFFF;
    font-size: 0.875rem;
}

/* File selector */
.slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__button {
    font-size: 0.875rem;
    line-height: 1;
    text-align: center;
}

.slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__text {
    font-size: 0.875rem;
    line-height: 1;
    text-align: center;
}

.slds-file-selector__input[disabled]~.slds-file-selector__body > .slds-file-selector__button {
    background: var(--color-light-blue);
    border-color: var(--color-light-blue);
    color: var(--color-disabled-button-text);
}

@media (max-width: 1023px) {
    .slds-file-selector {
        display: grid;
    }

    .slds-file-selector__dropzone {
        display: grid;
        padding: 0.125rem 0;
    }

    .slds-file-selector__input~.slds-file-selector__body {
        display: grid;
    }

    .slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__text {
        display: none;
    }
}

.mh-image-selector .slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__button {
    font-size: 0;
}

.mh-image-selector .slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__button:after {
    content: 'Add Image(s)';
    font-size: var(--dxp-s-button-font-size);
    color: var(--color-tarion-blue);
}

.mh-image-selector .slds-file-selector__input[disabled]~.slds-file-selector__body > .slds-file-selector__button:after {
    color: var(--color-disabled-button-text);
}

.mh-document-selector .slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__button {
    font-size: 0;
}

.mh-document-selector .slds-file-selector__input~.slds-file-selector__body > .slds-file-selector__button:after {
    content: 'Add Document(s)';
    font-size: var(--dxp-s-button-font-size);
    color: var(--color-tarion-blue);
}

.mh-document-selector .slds-file-selector__input[disabled]~.slds-file-selector__body > .slds-file-selector__button:after {
    color: var(--color-disabled-button-text);
}

.mh-file-description {
    flex: none;
    margin-right: 8rem;
    width: 15rem;
}

.mh-file-description > div {
    color: var(--color-black-60);
    margin-top: -1rem;
}

.mh-file-description-length {
    color: var(--color-black-60);
    margin-top: -1rem;
}

/* Buttons */
button.slds-button.slds-button_neutral:active:focus {
    box-shadow: none;
}

.mh-button-nowrap .slds-button {
    white-space: nowrap;
}

/* primary button */
.mh-button-primary {
    --sds-c-button-neutral-color-background: var(--color-tarion-yellow-light);
    --sds-c-button-neutral-color-background-hover: var(--color-tarion-yellow-80);
    --sds-c-button-neutral-color-border: var(--color-tarion-yellow-light);
    --sds-c-button-neutral-color-border-hover: var(--color-tarion-yellow-80);
    --sds-c-button-text-color: #000000;
    --sds-c-button-text-color-hover: #000000;
    --dxp-s-button-font-size: 0.875rem;
    --dxp-s-button-font-weight: 700;
    --dxp-g-neutral-2: transparent;
}

.mh-button-primary .slds-button {
    height: 2rem;
}

.mh-button-primary .slds-button:disabled {
    --dxp-s-button-font-weight: 400;
    --dxp-g-neutral-1: var(--color-disabled-button-text);
    background-color: var(--color-light-blue);
    border-color: var(--color-light-blue);
}

/* secondary button */
.mh-button-secondary {
    --sds-c-button-neutral-color-background: var(--color-tarion-blue-80);
    --sds-c-button-neutral-color-background-hover: var(--color-tarion-blue);
    --sds-c-button-neutral-color-border: var(--color-tarion-blue-80);
    --sds-c-button-neutral-color-border-hover: var(--color-tarion-blue);
    --sds-c-button-text-color: #FFFFFF;
    --sds-c-button-text-color-hover: #FFFFFF;
    --dxp-s-button-font-size: 0.875rem;
    --dxp-s-button-font-weight: 400;
}

.mh-button-secondary .slds-button {
    height: 2rem;
}

.mh-button-secondary .slds-button:disabled {
    --dxp-g-neutral-1: var(--color-disabled-button-text);
    background-color: var(--color-light-blue);
    border-color: var(--color-light-blue);
}

/* tertiary button */
.mh-button-tertiary {
    --sds-c-button-neutral-color-background: #FFFFFF;
    --sds-c-button-neutral-color-background-hover: var(--color-light-blue);
    --sds-c-button-neutral-color-border: var(--color-tarion-blue);
    --sds-c-button-neutral-color-border-hover: var(--color-tarion-blue);
    --sds-c-button-text-color: var(--color-tarion-blue);
    --sds-c-button-text-color-hover: var(--color-tarion-blue);
    --dxp-s-button-font-size: 0.875rem;
    --dxp-s-button-font-weight: 400;
}

.mh-button-tertiary .slds-button {
    height: 2rem;
    transition: border 0s;
}

@media print {
    .mh-button-primary, .mh-button-secondary, .mh-button-tertiary {
        display: none;
    }
}

/* Do not show disabled state for Pagination buttons */
.mh-button-tertiary .slds-button:not(.slds-button_first, .slds-button_middle, .slds-button_last):disabled {
    --dxp-g-neutral-1: var(--color-disabled-button-text);
    background-color: var(--color-light-blue);
    border-color: var(--color-light-blue);
}

/* Pagination */
.mh-datatable-pagination .slds-button {
    background-color: #FFFFFF;
    border-color: var(--color-tarion-blue);
    color: var(--color-tarion-blue);
    padding-left: 0;
    padding-right: 0;
    width: 3em;
}

.mh-datatable-pagination .slds-button:disabled, .mh-datatable-pagination .slds-button[disabled] {
    background-color: #FFFFFF;
    border-color: var(--color-gray-border);
    color: var(--color-gray-border);
}

.mh-datatable-pagination .mh-dots .slds-button:disabled, .mh-datatable-pagination .mh-dots .slds-button[disabled] {
    background-color: #FFFFFF;
    border-color: var(--color-tarion-blue);
    color: var(--color-tarion-blue);
}

.mh-datatable-pagination .slds-button .slds-button__icon_left {
    margin-right: 0;
}

.mh-datatable-pagination .mh-current-page .slds-button {
    background-color: var(--color-tarion-blue-80);
    border-color: var(--color-tarion-blue-80);
    color: #FFFFFF;
}

.mh-datatable-pagination .mh-current-page .slds-button:focus {
    box-shadow: none;
}

.mh-button-narrow {
    --slds-c-button-neutral-spacing-inline-start: .75rem;
    --slds-c-button-neutral-spacing-inline-end: .75rem;
}

.mh-mobile-button-wide {
    --slds-c-button-neutral-spacing-inline-start: 3.3rem;
    --slds-c-button-neutral-spacing-inline-end: 3.3rem;
}

.mh-mobile-button-group {
    display: flex;
}

.mh-mobile-button-group > [class^="mh-button-"] {
    width: 50%;
}

.mh-mobile-button-group > [class^="mh-button-"] + [class^="mh-button-"] {
    text-align: right;
}

.mh-mobile-button-group > div {
    width: 50%;
}

.mh-mobile-button-group > div + div {
    text-align: right;
}

.mh-mobile-button-group .slds-button {
    height: 2rem;
    white-space: nowrap;
    width: calc(100% - 0.3125rem);
}

.mh-button-stretch .slds-button {
    width: 100%;
}

.mh-button-stretch-normal .slds-button {
    width: 100%;
    font-weight: 400;
}

.mh-mobile-view-button {
    color: var(--color-tarion-yellow-light);
}

.mh-button-table {
    --sds-c-button-text-color: var(--color-tarion-blue);
    --sds-c-button-text-color-hover: var(--color-tarion-blue);
}

.mh-button-custom {
    --sds-c-button-neutral-color-background :#FFFFFF;
    --sds-c-button-neutral-color-background-hover : #FFFFFF;
    --sds-c-button-neutral-color-border : #FFFFFF;
    --sds-c-button-text-color: #000000;
    --sds-c-button-text-color-hover: #000000;
    border: 1px solid var(--color-blue-border);
    border-radius: 6px;
    height: 100px;
}

.mh-registration-breadcrumbs
{
    -webkit-text-fill-color: black;
    pointer-events: none;
}

.mh-button-custom:hover {
    cursor: pointer;
}

.mh-icon-success {
    --sds-c-icon-color-foreground: var(--color-success-green);
}

.userId {
    margin-bottom: 0px;
}

.spinner {
    position: fixed !important;
    top: 50%;
    left: 50%;
    z-index: 1;
}

.errorMessage {
    color: var(--color-error-red-sf);
}

.color-sixty-percent {
    color: rgba(0, 0, 0, 0.6);
}

.footer-social.social img {
    width: 25px;
    height: 25px;
}

.social-media {
    position: relative;
    display: inline-block;
}

.social-media a {
    position: relative;
    width: 39px;
    height: 39px;
    display: inline-block;
}

.social-media {
    position: relative;
    display: inline-block;
}

.facebook {
    background: url(/sfsites/c/resource/QFE_Experience/img/facebook.png) no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;

}

.twitter {
    background: url(/sfsites/c/resource/QFE_Experience/img/twitter.png) no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

.linkedin {
    background: url(/sfsites/c/resource/QFE_Experience/img/linkedin.png) no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

.youtube {
    background: url(/sfsites/c/resource/QFE_Experience/img/youtube.png) no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.youtube2 {
    height: 40px;
    width: 40px;
    margin-right: 20px;
    margin-left: 20px;
}

.instagram {
    background: url(../img/instagram.png) no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

/* Padding */
.mh-p-bottom_xxx-large {
    padding-bottom: 4rem;
}

.mh-p-top_xxx-large {
    padding-top: 4rem;
}

.mh-p-vertical_xxx-large {
    padding-top: 4rem;
    padding-bottom: 4rem;
}

.mh-m-bottom_xxx-large {
    margin-bottom: 4rem;
}

.mh-m-top_xxx-large {
    margin-top: 4rem;
}

.mh-m-vertical_xxx-large {
    margin-bottom: 4rem;
    margin-top: 4rem;
}

/* Form fields */
.mh-form-element {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
}

.mh-form-element-xx_small .slds-form-element {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-xx_small);
}
.mh-form-element-x_small .slds-form-element {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-x_small);
}
.mh-form-element-small .slds-form-element {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-small);
}

.mh-form-element-medium .slds-form-element {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-medium);
}

.mh-input-xx_small .slds-input {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-xx_small);
}

.mh-input-x_small .slds-input {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-xx_small);
}

.mh-input-small .slds-input {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-small);
}

.mh-input-medium .slds-input {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: var(--mh-c-element-width-medium);
}

.mh-input-stretch {
    --dxp-s-form-element-color-border: var(--color-gray-border);
    --sds-c-input-color-border: var(--color-gray-border);
    width: -webkit-fill-available;
}

.mh-dollar-element .slds-form-element__control:before {
    content: "$";
    margin-right: 0.5rem;
}

.mh-dollar-input-93 .slds-input {
    width: 93% !important;
}

.mh-dollar-element p {
    margin-bottom: 0.125rem;
    padding-right: 0.5rem;
}

.mh-radio .slds-form-element {
    margin-bottom: 0.5rem;
}

.mh-radio .slds-form-element__legend {
    margin-bottom: 0.5rem;
}

.mh-checkbox-disabled .slds-checkbox {
    --sds-c-checkbox-color-background: var(--color-palette-gray);
    --sds-c-checkbox-color-background-checked: var(--color-palette-gray);
    --sds-c-checkbox-mark-color-foreground: var(--color-box-shadow);
}

.profile-edit .mh-radio .slds-form-element__control > div {
    width: 33.3333333333%;
}

.mh-text-box .slds-form-element__label {
    margin-bottom: 1rem;
}

.mh-text-box > div {
    color: var(--color-black-60);
    margin-top: -1rem;
}

.slds-form-element .slds-form-element__control input[disabled]{
    color:  var(--color-black-text);
}

.slds-form-element.slds-has-error .slds-combobox_container {
    --slds-c-input-color-border: var(--color-error-red-sf);
    --slds-c-input-shadow: var(--color-error-red-sf) 0 0 0 1px inset;
}

.mh-form-icon {
    --sds-c-icon-color-foreground-default: var(--color-tarion-blue-80);
    --sds-c-icon-color-background: #FFFFFF;
}

.mh-hide-asterisk .slds-form-element .slds-required {
    display: none;
}

.slds-form-element__help {
    font-weight: 400 !important;
}

/* Registration */
.registration-card-body .slds-form-element__legend {
    margin-bottom: 0.5rem;
}

/* Modals */
.slds-modal__header {
    border: none;
}

.slds-modal__footer {
    background: var(--color-palette-gray);
}

.slds-modal__footer .slds-button_outline-brand {
    border-color: var(--color-tarion-blue);
    color: var(--color-tarion-blue);
}

.slds-modal__footer .slds-button_brand {
    background: var(--color-tarion-blue-80);
    border-color: var(--color-tarion-blue-80);
}

/* Progress Bar */
.slds-path__item:before { cursor: default; pointer-events: none; } 
.slds-path__item:after { cursor: default; pointer-events: none;} 
.slds-path__item:only-child { border-radius: 15rem; pointer-events: none;} 
.slds-path__item .slds-is-current{ background-color: var(--color-tarion-blue); pointer-events: none;}
.slds-path__link { cursor: none; pointer-events: none;} 
.slds-path__nav .slds-is-active { background-color: var(--color-tarion-blue); pointer-events: none; -webkit-text-fill-color: var(--color-tarion-blue);}
.slds-path__nav .slds-is-active:first-child { background-color: var(--color-light-blue); pointer-events: none;}
.slds-path__nav .slds-is-active:first-child::before { background-color: var(--color-light-blue); pointer-events: none;}
.slds-path__nav .slds-is-active:first-child::after { background-color: var(--color-light-blue); pointer-events: none;}
.slds-path__nav .slds-is-current:first-child:hover:before { background-image: none; pointer-events: none;} 
.slds-path__nav .slds-is-current:first-child:hover::after { background-image: none; pointer-events: none;} 
.slds-path__nav .slds-is-active .slds-path__link { text-decoration: none; pointer-events: none;} 
.slds-path__nav .slds-is-current:first-child { background-color: var(--color-tarion-blue); border-color: var(--color-tarion-blue); pointer-events: none; -webkit-text-fill-color: white; font-weight: bold;}
.slds-path__nav .slds-is-current:first-child::before { background-color: var(--color-tarion-blue); pointer-events: none; -webkit-text-fill-color: white; font-weight: bold;}
.slds-path__nav .slds-is-current:first-child::after { background-color: var(--color-tarion-blue); pointer-events: none; -webkit-text-fill-color: white; font-weight: bold;}
.slds-path__nav .slds-is-current .slds-path__link { color: white; text-decoration: none; pointer-events: none; -webkit-text-fill-color: white; font-weight: bold;} 
.slds-path__nav .slds-is-current::before { background-color: var(--color-tarion-blue); background-image: none; pointer-events: none; }
.slds-path__nav .slds-is-current::after { background-color: var(--color-tarion-blue); background-image: none; pointer-events: none;}
.slds-path__nav .slds-is-incomplete { background-color: var(--color-light-blue); pointer-events: none; -webkit-text-fill-color: var(--color-tarion-blue); font-weight: bold;  }
.slds-path__nav .slds-is-incomplete::before { background-color: var(--color-light-blue); pointer-events: none;}
.slds-path__nav .slds-is-incomplete::after { background-color: var(--color-light-blue); pointer-events: none;}
.slds-path__nav .slds-is-incomplete .slds-path__link { color: white; text-decoration: none; pointer-events: none; font-weight: bold;} 
.slds-path__nav .slds-is-complete { background-color: var(--color-light-blue); pointer-events: none; -webkit-text-fill-color: var(--color-tarion-blue); font-weight: bold;}
.slds-path__nav .slds-is-complete:before { background-color: var(--color-light-blue); pointer-events: none; font-weight: bold;}
.slds-path__nav .slds-is-complete:after { background-color: var(--color-light-blue); pointer-events: none; font-weight: bold;}
.slds-path__nav .slds-is-complete .slds-path__title { transform: none; pointer-events: none;} 
.slds-path__nav .slds-is-complete .slds-path__stage { transform: none; pointer-events: none;} 
.slds-path__link .slds-path__stage .slds-icon { fill: none; pointer-events: none;} 

.mh-progress-button .slds-button {
    border-radius: 50%;
}

.slds-progress__item.slds-is-completed .slds-progress__marker--icon, .slds-progress__item.slds-is-completed .slds-progress__marker_icon {
    color: var(--color-light-blue);
}

.slds-progress__item.slds-is-active .slds-progress__marker {
    border-color: var(--color-tarion-blue-80);
}

.slds-progress-bar span {
    height: 0;
}

div.slds-progress {
    max-width: 100%;
}

.slds-progress__marker--icon, .slds-progress__marker_icon {
    width: 1.5rem;
    height: 1.5rem;
    padding-bottom: 1px;
}

/* Accordion */

.slds-button.slds-accordion__summary-action {
    align-items: start;
    font-size: 0.875rem;
    font-weight: bold;
}

.slds-button.slds-accordion__summary-action:active {
    color: var(--sds-c-accordion-heading-text-color);
}

.slds-button.slds-accordion__summary-action:focus {
    text-decoration: none;
}

.forgot-password .slds-accordion__section {
    padding-left: 0;
    padding-right: 0;
}

.forgot-password .slds-accordion__section.slds-is-open {
    padding-bottom: 1rem;
}

.forgot-password .slds-button.slds-accordion__summary-action {
    font-size: 1.125rem;
    font-weight: 900;
}

.forgot-password .slds-accordion__content {
    /* to indent inline with label, add the svg width and padding */
    margin-left: calc((0.875 * var(--dxp-s-button-font-size)) + 0.5rem);
}

.forgot-password .slds-accordion__content a {
    color: var(--color-tarion-blue-80);
    font-weight: 700;
}

.faq-accordion .slds-button.slds-accordion__summary-action {
    font-weight: normal;
    line-height: var(--dxp-s-body-line-height);
    padding: 1rem 0.75rem;
}

.faq-accordion .slds-is-open .slds-button.slds-accordion__summary-action {
    font-weight: bold;
}

.faq-accordion .slds-accordion__content {
    padding-bottom: 0.25rem;
    /* align with qyestion to right of icon: icon width (0.875rem) + padding-right (0.5rem) */
    padding-left: 1.375rem;
}

/* Mobile Accordion */

.mh-mobile-accordion .slds-card {
    border: none;
    border-radius: 0;
    box-shadow: none;
}

.mh-mobile-accordion .slds-card__header {
    display: none;
}

.mh-mobile-accordion .slds-accordion__section {
    padding: 0 1rem 0 0.75rem;
}

.mh-mobile-accordion .slds-accordion__section.slds-is-open {
    box-shadow: 0px 3px 10px var(--color-box-shadow);
    margin-bottom: 1.25rem;
    padding: 1rem;
}

.mh-mobile-accordion .slds-accordion__section:not(.slds-is-open) .slds-accordion__summary {
    border-bottom: 1px solid var(--color-gray-border);
}

.mh-mobile-accordion-field {
    display: flex;
    padding-bottom: 1rem;
}

.mh-mobile-accordion-field > div:first-child {
    font-weight: bold;
    width: 8rem;
}

.mh-mobile-accordion-field > div + div {
    width: calc(100% - 8rem);
    word-wrap: break-word;
}

.mh-mobile-selection {
    background-color: #FFFFFF;
    position: relative;
}

/* Mobile Card */

.mh-mobile-card {
    border: 1px solid white;
    border-radius: 5px;
    box-shadow: 0 0 10px #d3d3d3;
    color: black;
    margin-bottom: 1rem;
    padding: 1rem;
}

.mh-mobile-card-body {
    box-shadow: 0px 3px 10px var(--color-box-shadow);
    margin: 1rem 0;
    padding: 1rem;
    position: relative;
}

.mh-mobile-card-field {
    display: flex;
    padding-bottom: 0.5rem;
}

.mh-mobile-card-field > div:first-child {
    font-weight: bold;
    width: 8rem;
}

.mh-mobile-card-field > div + div {
    width: calc(100% - 8rem);
    word-wrap: break-word;
}

/* Back to top button */

.back-to-top-button {
    background-color: var(--color-tarion-yellow-light);
    border-radius: 4px;
    height: 1.5rem;
    width: 1.5rem;
}

.back-to-top-button .slds-button_icon {
    border-color: var(--color-tarion-yellow-light);
}

.back-to-top-button .slds-button__icon {
    color: var(--color-black-text);
    margin-bottom: 3px;
}

.back-to-top-text {
    color: var(--color-blue-text);
    cursor: pointer;
    float: right;
}

.mh-mobile-help-text {
    color: #000000;
    opacity: 60%;
}

.mh-mobile-input .slds-form-element {
    margin: 0;
}

.mh-mobile-agreeText .slds-form-element__label {
    padding-right: 0.2rem;
}

.edit-attachment-icon {
    position: absolute;
    top: 0;
    right: 0;
}

.section-container:last-child hr {
    display: none;
}

.mobile-display-none {
    display: none;
}

.mh-homepage-button .slds-button {
    padding-left: 0;
    padding-right: 0;
}

.forgot-id-section a {
    font-weight: 700;
}

span .slds-truncate {
    white-space: normal;
}

div.other-expenses > lightning-input div {
    display: flex;
    align-items: center;
}
