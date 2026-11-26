.class public final Lvra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc84;


# instance fields
.field public final a:Lura;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc84;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvra;->b:Lc84;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lura;

    sget v1, Lfqa;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Lhsa;

    sget-object v2, Lira;->b:Lira;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lvra;->b:Lc84;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lura;-><init>([Lhsa;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvra;->a:Lura;

    return-void
.end method
