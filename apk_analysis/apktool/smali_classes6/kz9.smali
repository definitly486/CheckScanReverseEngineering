.class public final synthetic Lkz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Lyads/vq0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lyads/j36;

.field public final synthetic f:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lr07;Lyads/vq0;Ljava/lang/String;Lyads/j36;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz9;->b:Lr07;

    iput-object p2, p0, Lkz9;->c:Lyads/vq0;

    iput-object p3, p0, Lkz9;->d:Ljava/lang/String;

    iput-object p4, p0, Lkz9;->e:Lyads/j36;

    iput-object p5, p0, Lkz9;->f:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lkz9;->e:Lyads/j36;

    iget-object v4, p0, Lkz9;->f:Lyads/tt;

    iget-object v0, p0, Lkz9;->b:Lr07;

    iget-object v1, p0, Lkz9;->c:Lyads/vq0;

    iget-object v2, p0, Lkz9;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/j36;->a(Lr07;Lyads/vq0;Ljava/lang/String;Lyads/j36;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
