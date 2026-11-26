.class public final Lyads/oh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u03;


# instance fields
.field public final synthetic a:Lyads/ph;

.field public final synthetic b:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/ph;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/oh;->a:Lyads/ph;

    iput-object p2, p0, Lyads/oh;->b:Lyads/n8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdShown()V
    .locals 1

    iget-object v0, p0, Lyads/oh;->a:Lyads/ph;

    iget-object v0, v0, Lyads/ph;->e:Lnl3;

    iget-object p0, p0, Lyads/oh;->b:Lyads/n8;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
