.class public abstract Lyads/ky1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/af1;

.field public static final b:Lyads/af1;

.field public static final c:Lyads/af1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/ky1;->a:Lyads/af1;

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v0, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/ky1;->b:Lyads/af1;

    new-instance v0, Lyads/af1;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/ky1;->c:Lyads/af1;

    return-void
.end method
