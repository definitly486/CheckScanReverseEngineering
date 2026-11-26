.class public final Lf53;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf53$b;,
        Lf53$e;,
        Lf53$c;,
        Lf53$d;
    }
.end annotation


# static fields
.field public static final a:Lf53$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf53$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf53;->a:Lf53$a;

    return-void
.end method

.method public static a(ILf53$b;)Lf53$c;
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lf53$c;

    sget-object v1, Lf53;->a:Lf53$a;

    invoke-direct {p0, v0, p1, v1}, Lf53$c;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Lf53$b;Lf53$e;)V

    return-object p0
.end method
