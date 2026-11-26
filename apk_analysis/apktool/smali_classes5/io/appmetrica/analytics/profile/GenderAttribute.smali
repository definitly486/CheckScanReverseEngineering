.class public Lio/appmetrica/analytics/profile/GenderAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/profile/GenderAttribute$Gender;
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/G6;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/G6;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Ol;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    const-string v3, "appmetrica_gender"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/G6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    return-void
.end method


# virtual methods
.method public withValue(Lio/appmetrica/analytics/profile/GenderAttribute$Gender;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/mn;

    iget-object v2, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/G6;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    new-instance v6, Lio/appmetrica/analytics/impl/E4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/mn;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public withValueIfUndefined(Lio/appmetrica/analytics/profile/GenderAttribute$Gender;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/mn;

    iget-object v2, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->getStringValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/G6;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    new-instance v6, Lio/appmetrica/analytics/impl/ql;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {v6, p0}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/mn;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
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

    iget-object p0, p0, Lio/appmetrica/analytics/profile/GenderAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/G6;->a:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, p0}, Lio/appmetrica/analytics/impl/Ji;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method
