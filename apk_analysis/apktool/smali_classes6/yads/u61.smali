.class public abstract Lyads/u61;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/af1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lyads/xr2;

    invoke-direct {v2, v1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/u61;->a:Lyads/af1;

    return-void
.end method
