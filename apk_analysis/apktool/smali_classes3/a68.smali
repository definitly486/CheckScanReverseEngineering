.class public final synthetic La68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La68;->b:Ljava/lang/Object;

    iput-object p2, p0, La68;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Loz7$a;)V
    .locals 2

    iget-object v0, p0, La68;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, La68;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    new-instance v0, Le68;

    invoke-direct {v0, p1}, Le68;-><init>(Loz7$a;)V

    invoke-virtual {p0, v0}, Lh37;->M(Lo37;)Lh37;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lzy3;->b:Lqz5;

    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    sget-object p1, Lsn2;->a:Lsn2$a;

    invoke-virtual {p0, p1}, Lee0;->g(Lsn2;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    invoke-virtual {p0}, Lh37;->O()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La68;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, La68;->c:Ljava/lang/Object;

    check-cast p0, Lyads/r04;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/r04;Lyads/pe;)V

    return-void
.end method
