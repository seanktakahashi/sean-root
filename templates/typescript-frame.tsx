import { AuthRulesAdminEditorCodeEditor } from "@acme/fe-locales";
import { formatMessage } from "@acme/intl";
import { Alignment, Button, Navbar } from "@blueprintjs/core";
import { IconNames } from "@blueprintjs/icons";
import React, { useCallback } from "react";
import { connect } from "react-redux";

import styles from "../../styles/Template.module.scss";

export namespace Template {
  export interface OwnProps {
  }

  export interface DispatchProps {
  }

  export interface StoreProps {
  }

  export type Props = OwnProps & DispatchProps & StoreProps;
}

function TemplateInternal({ setEditorMode, editorMode }: Template.Props) {
  return (
    <div></div>
  );
}

function mapStateToProps(state: AuthRulesAdminAppState): Template.StoreProps {
  return {
    editorMode: selectEditorMode(state),
    previewUser: selectPreviewUser(state),
  };
}

const mapDispatchToProps = {
  setEditorMode: UiActions.setEditorMode,
  setPreviewUser: UserSagaIntents.setPreviewUserResult,
};

export const Template = connect(mapStateToProps, mapDispatchToProps)(TemplateInternal);

