.class public final Lyads/e65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/m8;

.field public final b:Lyads/j65;

.field public final c:Ly22;

.field public d:Z

.field public e:Lmb4;


# direct methods
.method public constructor <init>(Lyads/m8;Lyads/j65;)V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e65;->a:Lyads/m8;

    iput-object p2, p0, Lyads/e65;->b:Lyads/j65;

    iput-object v0, p0, Lyads/e65;->c:Ly22;

    return-void
.end method
