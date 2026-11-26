.class public final Lfp3;
.super Li0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Li0<",
        "TTarget;TType;>;"
    }
.end annotation


# instance fields
.field public final a:Lwr6;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwr6;Led2;I)V
    .locals 1

    iget-object v0, p1, Lwr6;->a:Lxe4;

    invoke-interface {v0}, Lme4;->getName()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfp3;->a:Lwr6;

    iput-object v0, p0, Lfp3;->b:Ljava/lang/String;

    iput-object p2, p0, Lfp3;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ld3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3<",
            "TTarget;TType;>;"
        }
    .end annotation

    iget-object p0, p0, Lfp3;->a:Lwr6;

    return-object p0
.end method

.method public final b()Lc93;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc93<",
            "TTarget;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    iget-object p0, p0, Lfp3;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfp3;->b:Ljava/lang/String;

    return-object p0
.end method
