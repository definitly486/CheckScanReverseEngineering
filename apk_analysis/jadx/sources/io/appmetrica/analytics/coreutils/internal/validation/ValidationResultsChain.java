package io.appmetrica.analytics.coreutils.internal.validation;

import defpackage.kn1;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ValidationResultsChain implements Validator<List<ValidationResult>> {
    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(List<ValidationResult> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((ValidationResult) obj).isValid()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ValidationResult) it.next()).getDescription());
        }
        return arrayList2.isEmpty() ? ValidationResult.Companion.successful(this) : ValidationResult.Companion.failed(this, qn1.a0(arrayList2, ", ", null, null, 0, null, 62));
    }
}
