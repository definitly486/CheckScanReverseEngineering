package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final class KeyMappingKt {
    private static final KeyMapping defaultKeyMapping;

    static {
        final KeyMapping keyMappingM2497commonKeyMappingVSD1kLU = m2497commonKeyMappingVSD1kLU(KeyModifiers.Companion.m2533getCtrlAuQ4EfA());
        defaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$1$1
            /* JADX WARN: Code duplicated, block: B:16:0x004b  */
            @Override // androidx.compose.foundation.text.KeyMapping
            /* JADX INFO: renamed from: map-ZmokQxo */
            public KeyCommand mo2496mapZmokQxo(KeyEvent keyEvent) {
                KeyCommand keyCommand;
                int iM2541getModifiersZmokQxo = KeyModifiersKt.m2541getModifiersZmokQxo(keyEvent);
                long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                Key.Companion companion = Key.Companion;
                KeyCommand keyCommand2 = null;
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7099getBackspaceEK5gGoQ())) {
                    KeyModifiers.Companion companion2 = KeyModifiers.Companion;
                    if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion2.m2538getNoneAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion2.m2539getShiftAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion2.m2540getShiftMetaAuQ4EfA())) {
                        keyCommand = KeyCommand.DELETE_PREV_CHAR;
                    } else if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion2.m2533getCtrlAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion2.m2536getCtrlShiftAuQ4EfA())) {
                        keyCommand = KeyCommand.DELETE_PREV_WORD;
                    } else {
                        keyCommand = null;
                    }
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7168getEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7265getNumPadEnterEK5gGoQ())) {
                    KeyModifiers.Companion companion3 = KeyModifiers.Companion;
                    if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion3.m2538getNoneAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion3.m2539getShiftAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion3.m2533getCtrlAuQ4EfA()) || KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion3.m2536getCtrlShiftAuQ4EfA())) {
                        keyCommand = KeyCommand.NEW_LINE;
                    } else {
                        keyCommand = null;
                    }
                } else {
                    keyCommand = null;
                }
                if (keyCommand != null) {
                    return keyCommand;
                }
                int iM2541getModifiersZmokQxo2 = KeyModifiersKt.m2541getModifiersZmokQxo(keyEvent);
                KeyModifiers.Companion companion4 = KeyModifiers.Companion;
                if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo2, companion4.m2536getCtrlShiftAuQ4EfA())) {
                    long jM7401getKeyZmokQxo2 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7158getDirectionLeftEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7260getNumPadDirectionLeftEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_LEFT_WORD;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7159getDirectionRightEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7261getNumPadDirectionRightEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_RIGHT_WORD;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7160getDirectionUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7262getNumPadDirectionUpEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_PREV_PARAGRAPH;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion.m7259getNumPadDirectionDownEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_NEXT_PARAGRAPH;
                    }
                } else if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo2, companion4.m2533getCtrlAuQ4EfA())) {
                    long jM7401getKeyZmokQxo3 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7158getDirectionLeftEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7260getNumPadDirectionLeftEK5gGoQ())) {
                        keyCommand2 = KeyCommand.LEFT_WORD;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7159getDirectionRightEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7261getNumPadDirectionRightEK5gGoQ())) {
                        keyCommand2 = KeyCommand.RIGHT_WORD;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7160getDirectionUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7262getNumPadDirectionUpEK5gGoQ())) {
                        keyCommand2 = KeyCommand.PREV_PARAGRAPH;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7259getNumPadDirectionDownEK5gGoQ())) {
                        keyCommand2 = KeyCommand.NEXT_PARAGRAPH;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7193getHEK5gGoQ())) {
                        keyCommand2 = KeyCommand.DELETE_PREV_CHAR;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7153getDeleteEK5gGoQ())) {
                        keyCommand2 = KeyCommand.DELETE_NEXT_WORD;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion.m7098getBackslashEK5gGoQ())) {
                        keyCommand2 = KeyCommand.DESELECT;
                    }
                } else if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo2, companion4.m2539getShiftAuQ4EfA())) {
                    long jM7401getKeyZmokQxo4 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo4, companion.m7234getMoveHomeEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo4, companion.m7270getNumPadMoveHomeEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_LINE_START;
                    } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo4, companion.m7233getMoveEndEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo4, companion.m7269getNumPadMoveEndEK5gGoQ())) {
                        keyCommand2 = KeyCommand.SELECT_LINE_END;
                    }
                } else if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo2, companion4.m2530getAltAuQ4EfA()) && Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7153getDeleteEK5gGoQ())) {
                    keyCommand2 = KeyCommand.DELETE_TO_LINE_END;
                }
                return keyCommand2 == null ? keyMappingM2497commonKeyMappingVSD1kLU.mo2496mapZmokQxo(keyEvent) : keyCommand2;
            }
        };
    }

    /* JADX INFO: renamed from: commonKeyMapping-VSD1kLU, reason: not valid java name */
    public static final KeyMapping m2497commonKeyMappingVSD1kLU(final int i) {
        return new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$commonKeyMapping$1
            @Override // androidx.compose.foundation.text.KeyMapping
            /* JADX INFO: renamed from: map-ZmokQxo */
            public KeyCommand mo2496mapZmokQxo(KeyEvent keyEvent) {
                int iM2541getModifiersZmokQxo = KeyModifiersKt.m2541getModifiersZmokQxo(keyEvent);
                int i2 = i;
                KeyModifiers.Companion companion = KeyModifiers.Companion;
                if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, KeyModifiers.m2516plus1uj4btU(i2, companion.m2539getShiftAuQ4EfA()))) {
                    if (Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), Key.Companion.m7379getZEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    return null;
                }
                if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, i)) {
                    long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    Key.Companion companion2 = Key.Companion;
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7136getCEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7200getInsertEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7267getNumPadInsertEK5gGoQ())) {
                        return KeyCommand.COPY;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7368getVEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7376getXEK5gGoQ())) {
                        return KeyCommand.CUT;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7086getAEK5gGoQ())) {
                        return KeyCommand.SELECT_ALL;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7377getYEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7379getZEK5gGoQ())) {
                        return KeyCommand.UNDO;
                    }
                    return null;
                }
                if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion.m2539getShiftAuQ4EfA())) {
                    long jM7401getKeyZmokQxo2 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                    Key.Companion companion3 = Key.Companion;
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7158getDirectionLeftEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7260getNumPadDirectionLeftEK5gGoQ())) {
                        return KeyCommand.SELECT_LEFT_CHAR;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7159getDirectionRightEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7261getNumPadDirectionRightEK5gGoQ())) {
                        return KeyCommand.SELECT_RIGHT_CHAR;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7160getDirectionUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7262getNumPadDirectionUpEK5gGoQ())) {
                        return KeyCommand.SELECT_UP;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7259getNumPadDirectionDownEK5gGoQ())) {
                        return KeyCommand.SELECT_DOWN;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7281getPageUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7273getNumPadPageUpEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_UP;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7280getPageDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7272getNumPadPageDownEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_DOWN;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7234getMoveHomeEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7270getNumPadMoveHomeEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_START;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7233getMoveEndEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7269getNumPadMoveEndEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_END;
                    }
                    if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7200getInsertEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7267getNumPadInsertEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    return null;
                }
                if (!KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion.m2538getNoneAuQ4EfA())) {
                    return null;
                }
                long jM7401getKeyZmokQxo3 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                Key.Companion companion4 = Key.Companion;
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7158getDirectionLeftEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7260getNumPadDirectionLeftEK5gGoQ())) {
                    return KeyCommand.LEFT_CHAR;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7159getDirectionRightEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7261getNumPadDirectionRightEK5gGoQ())) {
                    return KeyCommand.RIGHT_CHAR;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7160getDirectionUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7262getNumPadDirectionUpEK5gGoQ())) {
                    return KeyCommand.UP;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7155getDirectionDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7259getNumPadDirectionDownEK5gGoQ())) {
                    return KeyCommand.DOWN;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7154getDirectionCenterEK5gGoQ())) {
                    return KeyCommand.CENTER;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7281getPageUpEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7273getNumPadPageUpEK5gGoQ())) {
                    return KeyCommand.PAGE_UP;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7280getPageDownEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7272getNumPadPageDownEK5gGoQ())) {
                    return KeyCommand.PAGE_DOWN;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7234getMoveHomeEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7270getNumPadMoveHomeEK5gGoQ())) {
                    return KeyCommand.LINE_START;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7233getMoveEndEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7269getNumPadMoveEndEK5gGoQ())) {
                    return KeyCommand.LINE_END;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7168getEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7265getNumPadEnterEK5gGoQ())) {
                    return KeyCommand.NEW_LINE;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7099getBackspaceEK5gGoQ())) {
                    return KeyCommand.DELETE_PREV_CHAR;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7153getDeleteEK5gGoQ())) {
                    return KeyCommand.DELETE_NEXT_CHAR;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7283getPasteEK5gGoQ())) {
                    return KeyCommand.PASTE;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7151getCutEK5gGoQ())) {
                    return KeyCommand.CUT;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7148getCopyEK5gGoQ())) {
                    return KeyCommand.COPY;
                }
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo3, companion4.m7329getTabEK5gGoQ())) {
                    return KeyCommand.TAB;
                }
                return null;
            }
        };
    }

    public static final KeyMapping getDefaultKeyMapping() {
        return defaultKeyMapping;
    }
}
