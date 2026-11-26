.class public Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/G6;

.field private final b:Lio/appmetrica/analytics/impl/rl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/rl;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/G6;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    const-string v3, "appmetrica_1pd_email_sha256"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/G6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->a:Lio/appmetrica/analytics/impl/G6;

    iput-object p1, p0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->b:Lio/appmetrica/analytics/impl/rl;

    return-void
.end method


# virtual methods
.method public withEmailValues(Ljava/lang/Iterable;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/ln;

    iget-object v2, p0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->b:Lio/appmetrica/analytics/impl/rl;

    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/impl/rl;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const/16 p1, 0xc8

    const-string v4, "First party data emails attribute"

    invoke-direct {v5, p1, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/G6;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    new-instance v7, Lio/appmetrica/analytics/impl/E4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {v7, p0}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const/16 v4, 0xa

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/ln;-><init>(Ljava/lang/String;Ljava/util/List;ILio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public varargs withEmailValues([Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;->withEmailValues(Ljava/lang/Iterable;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method
