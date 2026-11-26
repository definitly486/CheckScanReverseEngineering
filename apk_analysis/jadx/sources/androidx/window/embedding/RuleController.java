package androidx.window.embedding;

import android.content.Context;
import defpackage.jh2;
import defpackage.ox2;
import java.io.IOException;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public final class RuleController {
    public static final Companion Companion = new Companion(null);
    private final EmbeddingBackend embeddingBackend;

    public RuleController(EmbeddingBackend embeddingBackend) {
        embeddingBackend.getClass();
        this.embeddingBackend = embeddingBackend;
    }

    public static final RuleController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    public static final Set<EmbeddingRule> parseRules(Context context, int i) {
        return Companion.parseRules(context, i);
    }

    public final void addRule(EmbeddingRule embeddingRule) {
        embeddingRule.getClass();
        this.embeddingBackend.addRule(embeddingRule);
    }

    public final void clearRules() {
        this.embeddingBackend.setRules(ox2.b);
    }

    public final Set<EmbeddingRule> getRules() {
        return this.embeddingBackend.getRules();
    }

    public final void removeRule(EmbeddingRule embeddingRule) {
        embeddingRule.getClass();
        this.embeddingBackend.removeRule(embeddingRule);
    }

    public final void setRules(Set<? extends EmbeddingRule> set) {
        set.getClass();
        this.embeddingBackend.setRules(set);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final RuleController getInstance(Context context) {
            context.getClass();
            Context applicationContext = context.getApplicationContext();
            EmbeddingBackend.Companion companion = EmbeddingBackend.Companion;
            applicationContext.getClass();
            return new RuleController(companion.getInstance(applicationContext));
        }

        public final Set<EmbeddingRule> parseRules(Context context, int i) throws XmlPullParserException, IOException {
            context.getClass();
            RuleParser ruleParser = RuleParser.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            Set<EmbeddingRule> rules$window_release = ruleParser.parseRules$window_release(applicationContext, i);
            return rules$window_release == null ? ox2.b : rules$window_release;
        }

        private Companion() {
        }
    }
}
