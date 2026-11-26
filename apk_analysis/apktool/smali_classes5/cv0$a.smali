.class public final Lcv0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li02;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li02<",
        "Lb57;",
        "Lb57;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcv0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcv0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcv0$a;->a:Lcv0$a;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lb57;

    :try_start_0
    new-instance p0, Lbu0;

    invoke-direct {p0}, Lbu0;-><init>()V

    invoke-virtual {p1}, Lb57;->L()Lwu0;

    move-result-object v0

    invoke-interface {v0, p0}, Lwu0;->o0(Ls18;)J

    invoke-virtual {p1}, Lb57;->p()Lj95;

    move-result-object v0

    invoke-virtual {p1}, Lb57;->o()J

    move-result-wide v1

    new-instance v3, Lc57;

    invoke-direct {v3, v0, v1, v2, p0}, Lc57;-><init>(Lj95;JLbu0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lb57;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lb57;->close()V

    throw p0
.end method
