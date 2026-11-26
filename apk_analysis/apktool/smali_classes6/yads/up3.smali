.class public final Lyads/up3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u03;


# instance fields
.field public final synthetic a:Lyads/vp3;

.field public final synthetic b:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/vp3;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/up3;->a:Lyads/vp3;

    iput-object p2, p0, Lyads/up3;->b:Lyads/n8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdShown()V
    .locals 1

    iget-object v0, p0, Lyads/up3;->a:Lyads/vp3;

    iget-object v0, v0, Lyads/vp3;->e:Lnl3;

    iget-object p0, p0, Lyads/up3;->b:Lyads/n8;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
