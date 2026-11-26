.class public abstract Lio/appmetrica/analytics/impl/Md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/qo;
.implements Lio/appmetrica/analytics/impl/x2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

.field public final d:Lio/appmetrica/analytics/impl/X2;

.field public e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/impl/Md;->b:I

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Md;->c:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Md;->d:Lio/appmetrica/analytics/impl/X2;

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Md;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/ro;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/ro;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ro;-><init>()V

    iget v1, p0, Lio/appmetrica/analytics/impl/Md;->b:I

    iput v1, v0, Lio/appmetrica/analytics/impl/ro;->b:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/ro;->a:[B

    new-instance p0, Lio/appmetrica/analytics/impl/to;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/to;-><init>()V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/ro;->d:Lio/appmetrica/analytics/impl/to;

    new-instance p0, Lio/appmetrica/analytics/impl/so;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/so;-><init>()V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/ro;->c:Lio/appmetrica/analytics/impl/so;

    return-object v0
.end method

.method public abstract synthetic a(Lio/appmetrica/analytics/impl/po;)V
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Md;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/X2;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Md;->d:Lio/appmetrica/analytics/impl/X2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/coreutils/internal/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreutils/internal/validation/Validator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Md;->c:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/Md;->b:I

    return p0
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Md;->c:Lio/appmetrica/analytics/coreutils/internal/validation/Validator;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/validation/Validator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Md;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/impl/Md;->b:I

    sget-object v3, Lio/appmetrica/analytics/impl/ao;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is skipped because "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
