package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.Utils_androidKt;
import defpackage.h8;
import defpackage.kx2;
import defpackage.ra8;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SourceInformationKt {
    private static final boolean hasSection(SourceInfoParserState sourceInfoParserState) {
        return sourceInfoParserState.getI() < sourceInfoParserState.getData().length() - 1 && Character.isLetter(sourceInfoParserState.getData().charAt(sourceInfoParserState.getI())) && sourceInfoParserState.getData().charAt(sourceInfoParserState.getI() + 1) == '(';
    }

    private static final List<LocationSourceInformation> parseLocations(SourceInfoParserState sourceInfoParserState) throws ParseException {
        boolean z;
        Integer numValueOf;
        ArrayList arrayList = new ArrayList();
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(':')) {
            if (sourceInfoParserState.matches('*')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                z = true;
            } else {
                z = false;
            }
            Integer numValueOf2 = !sourceInfoParserState.matches('@') ? Integer.valueOf(sourceInfoParserState.takeIntUntil("@") + 1) : null;
            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            int iTakeIntUntil = sourceInfoParserState.takeIntUntil("L,:");
            if (sourceInfoParserState.matches('L')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                numValueOf = Integer.valueOf(sourceInfoParserState.takeIntUntil(",:"));
            } else {
                numValueOf = null;
            }
            arrayList.add(new LocationSourceInformation(numValueOf2 != null ? numValueOf2.intValue() : -1, iTakeIntUntil, numValueOf != null ? numValueOf.intValue() : -1, z));
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    private static final List<ParameterSourceInformation> parseParameterIndex(SourceInfoParserState sourceInfoParserState) throws ParseException {
        String strReplaceComposePrefix;
        sourceInfoParserState.advance(2);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(')')) {
            if (sourceInfoParserState.matches('!')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                String strTakeUntil = sourceInfoParserState.takeUntil("!,)");
                if (strTakeUntil.length() != 0) {
                    int i = Integer.parseInt(strTakeUntil);
                    int i2 = 0;
                    while (i > 0) {
                        int size = arrayList.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size) {
                                arrayList.add(new ParameterSourceInformation(i2, null, null, 6, null));
                                i--;
                                break;
                            }
                            if (((ParameterSourceInformation) arrayList.get(i3)).getSortedIndex() == i2) {
                                i2++;
                                break;
                            }
                            i3++;
                        }
                    }
                } else {
                    z = true;
                }
            } else {
                int iTakeIntUntil = sourceInfoParserState.takeIntUntil("!:,)");
                if (sourceInfoParserState.matches(':')) {
                    SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                    strReplaceComposePrefix = replaceComposePrefix(sourceInfoParserState.takeUntil("!,)"));
                } else {
                    strReplaceComposePrefix = null;
                }
                if (z) {
                    int i4 = 0;
                    while (i4 < iTakeIntUntil) {
                        int size2 = arrayList.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= size2) {
                                arrayList.add(new ParameterSourceInformation(i4, null, null, 6, null));
                                break;
                            }
                            if (((ParameterSourceInformation) arrayList.get(i5)).getSortedIndex() == i4) {
                                i4++;
                                break;
                            }
                            i5++;
                        }
                    }
                    z = false;
                }
                arrayList.add(new ParameterSourceInformation(iTakeIntUntil, null, strReplaceComposePrefix, 2, null));
            }
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        sourceInfoParserState.expect(')');
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    private static final List<ParameterSourceInformation> parseParameterNames(SourceInfoParserState sourceInfoParserState) throws ParseException {
        String strReplaceComposePrefix;
        sourceInfoParserState.advance(2);
        ArrayList arrayList = new ArrayList();
        while (!sourceInfoParserState.atEnd() && !sourceInfoParserState.matches(')')) {
            String strTakeUntil = sourceInfoParserState.takeUntil(":,)");
            if (sourceInfoParserState.matches(':')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                strReplaceComposePrefix = replaceComposePrefix(sourceInfoParserState.takeUntil(",)"));
            } else {
                strReplaceComposePrefix = null;
            }
            arrayList.add(new ParameterSourceInformation(arrayList.size(), strTakeUntil, strReplaceComposePrefix));
            if (sourceInfoParserState.matches(',')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            }
        }
        sourceInfoParserState.expect(')');
        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        return arrayList;
    }

    public static final SourceInformation parseSourceInformation(String str) {
        if (str.length() == 0) {
            return null;
        }
        try {
            return parseSourceInformationInternal(str);
        } catch (ParseException e) {
            Utils_androidKt.logError(e.getMessage(), e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0049  */
    /* JADX WARN: Code duplicated, block: B:29:0x0070  */
    /* JADX WARN: Code duplicated, block: B:31:0x0076  */
    /* JADX WARN: Code duplicated, block: B:32:0x0079  */
    /* JADX WARN: Code duplicated, block: B:34:0x007f  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00be  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x008e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0081 A[SYNTHETIC] */
    public static final SourceInformation parseSourceInformationInternal(String str) throws ParseException {
        boolean z;
        boolean z2;
        String strTakeUntil;
        List locations;
        List parameterIndex;
        String strTakeUntil2;
        char cCurrent;
        int i;
        SourceInfoParserState sourceInfoParserState = new SourceInfoParserState(str);
        String strTakeUntilEnd = null;
        if (sourceInfoParserState.matches('C')) {
            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            if (sourceInfoParserState.matches('C')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                z = true;
            } else {
                z = false;
            }
            if (sourceInfoParserState.matches('(')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                strTakeUntil = sourceInfoParserState.takeUntil(")");
                sourceInfoParserState.expect(')');
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                z2 = true;
            } else {
                z2 = true;
            }
            locations = kx2.b;
            parameterIndex = locations;
            while (hasSection(sourceInfoParserState)) {
                cCurrent = sourceInfoParserState.current();
                if (cCurrent != 'N') {
                    parameterIndex = parseParameterNames(sourceInfoParserState);
                } else if (cCurrent != 'P') {
                    sourceInfoParserState.advance(2);
                    i = 0;
                    while (true) {
                        if (i > 0 && sourceInfoParserState.matches(')')) {
                            sourceInfoParserState.expect(')');
                            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                            break;
                        }
                        if (!sourceInfoParserState.atEnd()) {
                            sourceInfoParserState.throwParseError("unexpected end");
                            h8.d();
                            return null;
                        }
                        if (sourceInfoParserState.matches('(')) {
                            i++;
                        } else if (sourceInfoParserState.matches(')')) {
                            i--;
                        }
                        SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                    }
                } else {
                    parameterIndex = parseParameterIndex(sourceInfoParserState);
                }
            }
            if (sourceInfoParserState.matches(':')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            } else {
                locations = parseLocations(sourceInfoParserState);
            }
            strTakeUntil2 = sourceInfoParserState.takeUntil("#");
            if (strTakeUntil2.length() <= 0) {
                strTakeUntil2 = null;
            }
            if (sourceInfoParserState.matches('#')) {
                SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                strTakeUntilEnd = sourceInfoParserState.takeUntilEnd();
            }
            return new SourceInformation(z2, z, strTakeUntil, strTakeUntil2, parameterIndex, strTakeUntilEnd, locations, str);
        }
        z = false;
        z2 = false;
        strTakeUntil = null;
        locations = kx2.b;
        parameterIndex = locations;
        while (hasSection(sourceInfoParserState)) {
            cCurrent = sourceInfoParserState.current();
            if (cCurrent != 'N') {
                parameterIndex = parseParameterNames(sourceInfoParserState);
            } else if (cCurrent != 'P') {
                sourceInfoParserState.advance(2);
                i = 0;
                while (true) {
                    if (i > 0) {
                    }
                    if (!sourceInfoParserState.atEnd()) {
                        sourceInfoParserState.throwParseError("unexpected end");
                        h8.d();
                        return null;
                    }
                    if (sourceInfoParserState.matches('(')) {
                        i++;
                    } else if (sourceInfoParserState.matches(')')) {
                        i--;
                    }
                    SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
                }
            } else {
                parameterIndex = parseParameterIndex(sourceInfoParserState);
            }
        }
        if (sourceInfoParserState.matches(':')) {
            locations = parseLocations(sourceInfoParserState);
        } else {
            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
        }
        strTakeUntil2 = sourceInfoParserState.takeUntil("#");
        if (strTakeUntil2.length() <= 0) {
            strTakeUntil2 = null;
        }
        if (sourceInfoParserState.matches('#')) {
            SourceInfoParserState.advance$default(sourceInfoParserState, 0, 1, null);
            strTakeUntilEnd = sourceInfoParserState.takeUntilEnd();
        }
        return new SourceInformation(z2, z, strTakeUntil, strTakeUntil2, parameterIndex, strTakeUntilEnd, locations, str);
    }

    private static final String replaceComposePrefix(String str) {
        return ra8.A(str, "c#", "androidx.compose.");
    }
}
