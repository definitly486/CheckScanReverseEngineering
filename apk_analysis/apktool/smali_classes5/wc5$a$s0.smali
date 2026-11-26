.class public final Lwc5$a$s0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Ln67;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$s0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$s0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$s0;->f:Lwc5$a$s0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KOIN: authorized retrofit created"

    invoke-static {p0}, Ls0;->c(Ljava/lang/String;)V

    sget-object p0, Lon;->b:Lon;

    const-string p2, "server_host"

    invoke-virtual {p1, p2}, Lze7;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-class v0, Ldf5;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldf5;

    new-instance p1, Ln67$b;

    invoke-direct {p1}, Ln67$b;-><init>()V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln67$b;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, Lon;->c(ZZ)Lokhttp3/OkHttpClient$a;

    move-result-object p0

    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    iput-object p2, p1, Ln67$b;->a:Lokhttp3/a$a;

    sget-object p0, Lay3;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li02$a;

    invoke-virtual {p1, p0}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lws3;

    invoke-direct {p0}, Lws3;-><init>()V

    new-instance p2, Lcom/warefly/checkscan/data/network/deserializers/TransferShowcaseDeserializer;

    invoke-direct {p2}, Lcom/warefly/checkscan/data/network/deserializers/TransferShowcaseDeserializer;-><init>()V

    iget-object v0, p2, Lcom/warefly/checkscan/data/network/deserializers/TransferShowcaseDeserializer;->b:Ljava/util/HashMap;

    const-string v1, "REGISTER"

    const-class v2, Lk70$k;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PHONE"

    const-class v2, Lk70$j;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SBP_PHONE"

    const-class v2, Lk70$l;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COMMON_CELL"

    const-class v2, Lk70$d;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COMMON_BANNER"

    const-class v2, Lk70$c;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lk70$h;

    const-string v2, "MINI_LOGO_BANNER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HEADER_LOGO_BANNERS"

    const-class v3, Lk70$f;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lk70$m;

    const-string v3, "TITLE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lk70$b;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/data/network/deserializers/PromoSelectCardDeserializer;

    invoke-direct {p2}, Lcom/warefly/checkscan/data/network/deserializers/PromoSelectCardDeserializer;-><init>()V

    iget-object v0, p2, Lcom/warefly/checkscan/data/network/deserializers/PromoSelectCardDeserializer;->b:Ljava/util/HashMap;

    const-class v1, Lwp6$j;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COMMON"

    const-class v3, Lwp6$i;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COMMON_RICH_PREVIEW"

    const-class v3, Lwp6$a;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MFO_RICH_PREVIEW"

    const-class v3, Lwp6$c;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lwp6$d;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MINI_LOGO_TRANSFER_BANNER"

    const-class v2, Lwp6$e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INFO"

    const-class v2, Lwp6$k;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lwp6$h;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/data/network/deserializers/OnboardingSlideDeserializer;

    invoke-direct {p2}, Lcom/warefly/checkscan/data/network/deserializers/OnboardingSlideDeserializer;-><init>()V

    iget-object v0, p2, Lcom/warefly/checkscan/data/network/deserializers/OnboardingSlideDeserializer;->b:Ljava/util/HashMap;

    const-string v1, "MULTI"

    const-class v2, Ljf5;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEFAULT"

    const-class v2, Lei2;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lfx5;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/products/data/network/deserializer/ProductsSelectionBlockDeserializer;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/warefly/checkscan/products/data/network/deserializer/ProductsSelectionBlockDeserializer;-><init>(I)V

    iget-object v1, p2, Lcom/warefly/checkscan/products/data/network/deserializer/ProductsSelectionBlockDeserializer;->c:Ljava/util/HashMap;

    const-string v2, "MixedOffersSelection"

    const-class v3, Lgj6;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MerchantOffersSelection"

    const-class v3, Lfj6;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lik6;

    invoke-virtual {p0, v1, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;

    invoke-direct {p2, v0}, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;-><init>(I)V

    iget-object v1, p2, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->c:Ljava/util/HashMap;

    const-string v2, "LoyaltyProgram"

    const-class v3, Ldy4;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Cashback"

    const-class v4, Lj61;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "OfferConditionsList"

    const-class v4, Lrt5;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MerchantsList"

    const-class v4, Lz95;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TextBlock"

    const-class v4, Leq8;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "OfferHeader"

    const-class v4, Lst5;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FullTerms"

    const-class v4, Lch6;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lzh6;

    invoke-virtual {p0, v1, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/products/data/network/deserializer/SelectionDetailsBlockDeserializer;

    invoke-direct {p2, v0}, Lcom/warefly/checkscan/products/data/network/deserializer/SelectionDetailsBlockDeserializer;-><init>(I)V

    iget-object v0, p2, Lcom/warefly/checkscan/products/data/network/deserializer/SelectionDetailsBlockDeserializer;->c:Ljava/util/HashMap;

    const-string v1, "SelectionHeader"

    const-class v3, Lin7;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OffersListTitle"

    const-class v3, Lyn7;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljn7;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CashbackRules"

    const-class v2, Lum7;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Merchant"

    const-class v2, Lun7;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Offer"

    const-class v2, Lvn7;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lfn7;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/auth/data/network/deserializer/AuthResponseDeserializer;

    invoke-direct {p2}, Lcom/warefly/checkscan/auth/data/network/deserializer/AuthResponseDeserializer;-><init>()V

    const-class v0, Lex;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/warefly/checkscan/personalform/data/network/deserializer/ProfileDataFormQuestionsDeserializer;

    invoke-direct {p2}, Lcom/warefly/checkscan/personalform/data/network/deserializer/ProfileDataFormQuestionsDeserializer;-><init>()V

    iget-object v0, p2, Lcom/warefly/checkscan/personalform/data/network/deserializer/ProfileDataFormQuestionsDeserializer;->b:Ljava/util/HashMap;

    const-string v1, "TEXT"

    const-class v2, Lyk6$a$i;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DATE"

    const-class v2, Lyk6$a$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SINGLE_CHOICE"

    const-class v2, Lyk6$a$h;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AREA"

    const-class v2, Lyk6$a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PHONE_EDIT"

    const-class v2, Lyk6$a$f;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SINGLE_CHOICE_DROPDOWN"

    const-class v2, Lyk6$a$c;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lyk6$a$g;

    invoke-virtual {p0, v0, p2}, Lws3;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2, p0}, Lcom/google/gson/Gson;-><init>(Lws3;)V

    new-instance p0, Lxs3;

    invoke-direct {p0, p2}, Lxs3;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {p1, p0}, Ln67$b;->a(Li02$a;)V

    new-instance p0, Lc97;

    invoke-direct {p0}, Lgy0$a;-><init>()V

    iget-object p2, p1, Ln67$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ln67$b;->c()Ln67;

    move-result-object p0

    return-object p0
.end method
