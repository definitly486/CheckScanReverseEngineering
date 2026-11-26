.class public interface abstract Lyads/sc1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/sc1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lf2;-><init>(I)V

    sput-object v0, Lyads/sc1;->a:Lyads/sc1;

    return-void
.end method

.method public static synthetic b(Lyads/vq0;Ljava/lang/String;Lyads/mc1;)Lyads/du3;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "To load patch you must provide implementation of DivDownloader to your DivConfiguration. "

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
