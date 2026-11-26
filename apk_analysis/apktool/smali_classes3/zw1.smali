.class public final Lzw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqm5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr22;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzw1;->a:Landroid/content/Context;

    new-instance p1, Lzw1$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lzw1$a;-><init>(Lzw1;Le02;)V

    invoke-static {p1}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p1

    invoke-static {p1, p2}, Lud3;->b(Lhd3;Lo22;)Lhd3;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object p1

    iput-object p1, p0, Lzw1;->b:Lhd3;

    return-void
.end method


# virtual methods
.method public final a()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lzw1;->b:Lhd3;

    return-object p0
.end method
