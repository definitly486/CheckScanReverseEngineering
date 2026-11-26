package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes2.dex */
public class CLParser {
    static boolean sDebug = false;
    private String mContent;
    private boolean mHasComment = false;
    private int mLineNumber;

    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i, TYPE type, boolean z, char[] cArr) {
        CLElement cLElementAllocate;
        if (sDebug) {
            System.out.println("CREATE " + type + " at " + cArr[i]);
        }
        switch (type.ordinal()) {
            case 1:
                cLElementAllocate = CLObject.allocate(cArr);
                i++;
                break;
            case 2:
                cLElementAllocate = CLArray.allocate(cArr);
                i++;
                break;
            case 3:
                cLElementAllocate = CLNumber.allocate(cArr);
                break;
            case 4:
                cLElementAllocate = CLString.allocate(cArr);
                break;
            case 5:
                cLElementAllocate = CLKey.allocate(cArr);
                break;
            case 6:
                cLElementAllocate = CLToken.allocate(cArr);
                break;
            default:
                cLElementAllocate = null;
                break;
        }
        if (cLElementAllocate == null) {
            return null;
        }
        cLElementAllocate.setLine(this.mLineNumber);
        if (z) {
            cLElementAllocate.setStart(i);
        }
        if (cLElement instanceof CLContainer) {
            cLElementAllocate.setContainer((CLContainer) cLElement);
        }
        return cLElementAllocate;
    }

    private CLElement getNextJsonElement(int i, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c == '\t' || c == '\n' || c == '\r' || c == ' ') {
            return cLElement;
        }
        if (c == '\"' || c == '\'') {
            return cLElement instanceof CLObject ? createElement(cLElement, i, TYPE.KEY, true, cArr) : createElement(cLElement, i, TYPE.STRING, true, cArr);
        }
        if (c == '[') {
            return createElement(cLElement, i, TYPE.ARRAY, true, cArr);
        }
        if (c != ']') {
            if (c == '{') {
                return createElement(cLElement, i, TYPE.OBJECT, true, cArr);
            }
            if (c != '}') {
                switch (c) {
                    case '+':
                    case '-':
                    case '.':
                    case '0':
                    case '1':
                    case '2':
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    case '4':
                    case '5':
                    case '6':
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    case '8':
                    case '9':
                        return createElement(cLElement, i, TYPE.NUMBER, true, cArr);
                    case ',':
                    case ':':
                        return cLElement;
                    case '/':
                        int i2 = i + 1;
                        if (i2 >= cArr.length || cArr[i2] != '/') {
                            return cLElement;
                        }
                        this.mHasComment = true;
                        return cLElement;
                    default:
                        if (!(cLElement instanceof CLContainer) || (cLElement instanceof CLObject)) {
                            return createElement(cLElement, i, TYPE.KEY, true, cArr);
                        }
                        CLElement cLElementCreateElement = createElement(cLElement, i, TYPE.TOKEN, true, cArr);
                        CLToken cLToken = (CLToken) cLElementCreateElement;
                        if (cLToken.validate(c, i)) {
                            return cLElementCreateElement;
                        }
                        throw new CLParsingException("incorrect token <" + c + "> at line " + this.mLineNumber, cLToken);
                }
            }
        }
        cLElement.setEnd(i - 1);
        CLElement container = cLElement.getContainer();
        container.setEnd(i);
        return container;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0050 A[EDGE_INSN: B:108:0x0050->B:24:0x0050 BREAK  A[LOOP:1: B:14:0x0036->B:89:0x014b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x014b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:31:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x006a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0071  */
    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x008a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:43:0x0097  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:79:0x0120  */
    /* JADX WARN: Code duplicated, block: B:81:0x012b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0138  */
    public CLObject parse() throws CLParsingException {
        boolean z;
        long j;
        char c;
        long j2;
        CLToken cLToken;
        long j3;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i = 1;
        this.mLineNumber = 1;
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            }
            char c2 = charArray[i2];
            if (c2 == '{') {
                break;
            }
            if (c2 == '\n') {
                this.mLineNumber++;
            }
            i2++;
        }
        if (i2 == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject cLObjectAllocate = CLObject.allocate(charArray);
        cLObjectAllocate.setLine(this.mLineNumber);
        cLObjectAllocate.setStart(i2);
        int i3 = i2 + 1;
        CLElement container = cLObjectAllocate;
        while (i3 < length) {
            char c3 = charArray[i3];
            if (c3 == '\n') {
                this.mLineNumber += i;
            }
            if (this.mHasComment) {
                if (c3 == '\n') {
                    this.mHasComment = z2;
                    if (container == null) {
                        break;
                        break;
                    }
                    if (container.isDone()) {
                        container = getNextJsonElement(i3, c3, container, charArray);
                    } else if (container instanceof CLObject) {
                        if (c3 == '}') {
                            container.setEnd(i3 - 1);
                        } else {
                            container = getNextJsonElement(i3, c3, container, charArray);
                        }
                    } else if (container instanceof CLArray) {
                        z = container instanceof CLString;
                        if (z) {
                            j3 = container.mStart;
                            if (charArray[(int) j3] == c3) {
                                container.setStart(j3 + 1);
                                container.setEnd(i3 - 1);
                            }
                        } else {
                            if (container instanceof CLToken) {
                                cLToken = (CLToken) container;
                                if (!cLToken.validate(c3, i3)) {
                                    throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                                }
                            }
                            if (container instanceof CLKey) {
                                j = container.mStart;
                                c = charArray[(int) j];
                                if (c != '\'') {
                                    container.setStart(j + 1);
                                    container.setEnd(i3 - 1);
                                } else {
                                    container.setStart(j + 1);
                                    container.setEnd(i3 - 1);
                                }
                            } else {
                                j = container.mStart;
                                c = charArray[(int) j];
                                if (c != '\'') {
                                    container.setStart(j + 1);
                                    container.setEnd(i3 - 1);
                                } else {
                                    container.setStart(j + 1);
                                    container.setEnd(i3 - 1);
                                }
                            }
                            if (!container.isDone()) {
                                j2 = i3 - 1;
                                container.setEnd(j2);
                                if (c3 != '}') {
                                    container = container.getContainer();
                                    container.setEnd(j2);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j2);
                                    }
                                } else {
                                    container = container.getContainer();
                                    container.setEnd(j2);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j2);
                                    }
                                }
                            }
                        }
                        if (!container.isDone()) {
                        }
                    } else if (c3 == ']') {
                        container.setEnd(i3 - 1);
                    } else {
                        container = getNextJsonElement(i3, c3, container, charArray);
                    }
                    i = i;
                    if (!container.isDone()) {
                    }
                } else {
                    i = i;
                }
            } else {
                if (container == null) {
                    break;
                }
                if (container.isDone()) {
                    container = getNextJsonElement(i3, c3, container, charArray);
                } else if (container instanceof CLObject) {
                    if (c3 == '}') {
                        container.setEnd(i3 - 1);
                    } else {
                        container = getNextJsonElement(i3, c3, container, charArray);
                    }
                } else if (container instanceof CLArray) {
                    z = container instanceof CLString;
                    if (z) {
                        j3 = container.mStart;
                        if (charArray[(int) j3] == c3) {
                            container.setStart(j3 + 1);
                            container.setEnd(i3 - 1);
                        }
                    } else {
                        if (container instanceof CLToken) {
                            cLToken = (CLToken) container;
                            if (!cLToken.validate(c3, i3)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                            }
                        }
                        if ((container instanceof CLKey) || z) {
                            j = container.mStart;
                            c = charArray[(int) j];
                            if ((c != '\'' || c == '\"') && c == c3) {
                                container.setStart(j + 1);
                                container.setEnd(i3 - 1);
                            }
                        }
                        if (!container.isDone() && (c3 == '}' || c3 == ']' || c3 == ',' || c3 == ' ' || c3 == '\t' || c3 == '\r' || c3 == '\n' || c3 == ':')) {
                            j2 = i3 - 1;
                            container.setEnd(j2);
                            if (c3 != '}' || c3 == ']') {
                                container = container.getContainer();
                                container.setEnd(j2);
                                if (container instanceof CLKey) {
                                    container = container.getContainer();
                                    container.setEnd(j2);
                                }
                            }
                        }
                    }
                    if (!container.isDone() && (!(container instanceof CLKey) || ((CLKey) container).mElements.size() > 0)) {
                        container = container.getContainer();
                    }
                } else if (c3 == ']') {
                    container.setEnd(i3 - 1);
                } else {
                    container = getNextJsonElement(i3, c3, container, charArray);
                }
                i = i;
                if (!container.isDone()) {
                }
            }
            i3++;
            i = i;
            z2 = false;
        }
        while (container != null && !container.isDone()) {
            if (container instanceof CLString) {
                container.setStart(((int) container.mStart) + 1);
            }
            container.setEnd(length - 1);
            container = container.getContainer();
        }
        if (sDebug) {
            System.out.println("Root: " + cLObjectAllocate.toJSON());
        }
        return cLObjectAllocate;
    }

    public static CLObject parse(String str) {
        return new CLParser(str).parse();
    }
}
