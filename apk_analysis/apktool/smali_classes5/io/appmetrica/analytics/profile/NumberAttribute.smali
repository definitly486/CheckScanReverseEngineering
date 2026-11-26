.class public final Lio/appmetrica/analytics/profile/NumberAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/G6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Eb;Lio/appmetrica/analytics/impl/Vb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/G6;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/G6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    return-void
.end method


# virtual methods
.method public withValue(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/qe;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    new-instance v5, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/E4;

    new-instance p0, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {p0, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/qe;-><init>(Ljava/lang/String;DLio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public withValueIfUndefined(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/qe;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    new-instance v5, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/ql;

    new-instance p0, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {p0, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/qe;-><init>(Ljava/lang/String;DLio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/Ji;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/NumberAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Vb;

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0, v2, v3}, Lio/appmetrica/analytics/impl/Ji;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method
