.class public final synthetic Ldq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/m62;

.field public final synthetic c:Lyads/y52;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/c62;

.field public final synthetic f:Lyads/tt;

.field public final synthetic g:Lyads/w41;

.field public final synthetic h:Lyads/n32;

.field public final synthetic i:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lyads/m62;Lyads/y52;Lyads/fs2;Lyads/c62;Lyads/tt;Lyads/w41;Lyads/n32;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq9;->b:Lyads/m62;

    iput-object p2, p0, Ldq9;->c:Lyads/y52;

    iput-object p3, p0, Ldq9;->d:Lyads/fs2;

    iput-object p4, p0, Ldq9;->e:Lyads/c62;

    iput-object p5, p0, Ldq9;->f:Lyads/tt;

    iput-object p6, p0, Ldq9;->g:Lyads/w41;

    iput-object p7, p0, Ldq9;->h:Lyads/n32;

    iput-object p8, p0, Ldq9;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v0, p0, Ldq9;->b:Lyads/m62;

    iget-object v1, p0, Ldq9;->c:Lyads/y52;

    iget-object v2, p0, Ldq9;->d:Lyads/fs2;

    iget-object v3, p0, Ldq9;->e:Lyads/c62;

    iget-object v4, p0, Ldq9;->f:Lyads/tt;

    iget-object v5, p0, Ldq9;->g:Lyads/w41;

    iget-object v6, p0, Ldq9;->h:Lyads/n32;

    iget-object v7, p0, Ldq9;->i:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v8}, Lyads/c62;->a(Lyads/m62;Lyads/y52;Lyads/fs2;Lyads/c62;Lyads/tt;Lyads/w41;Lyads/n32;Ljava/util/List;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
