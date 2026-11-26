.class public final synthetic Lq7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/r86;

.field public final synthetic c:Lyads/j86;

.field public final synthetic d:Lyads/e4;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lyads/r86;Lyads/j86;Lyads/e4;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7a;->b:Lyads/r86;

    iput-object p2, p0, Lq7a;->c:Lyads/j86;

    iput-object p3, p0, Lq7a;->d:Lyads/e4;

    iput-object p4, p0, Lq7a;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lq7a;->e:Landroid/content/Context;

    check-cast p1, Lyads/m35;

    iget-object v1, p0, Lq7a;->b:Lyads/r86;

    iget-object v2, p0, Lq7a;->c:Lyads/j86;

    iget-object p0, p0, Lq7a;->d:Lyads/e4;

    invoke-static {v1, v2, p0, v0, p1}, Lyads/r86;->a(Lyads/r86;Lyads/j86;Lyads/e4;Landroid/content/Context;Lyads/m35;)Lyads/m35;

    move-result-object p0

    return-object p0
.end method
