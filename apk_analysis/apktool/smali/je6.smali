.class public final Lje6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmu0;

.field public final b:Lz81;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, -0x2

    invoke-static {v2, v0, v0, v1}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object v0

    iput-object v0, p0, Lje6;->a:Lmu0;

    new-instance v1, Lz81;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lz81;-><init>(Lqz6;Z)V

    iput-object v1, p0, Lje6;->b:Lz81;

    return-void
.end method
