.class public final Lcom/hookedonplay/decoviewlib/DecoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpq7$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/DecoView;->b(Lpq7;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hookedonplay/decoviewlib/DecoView;


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/DecoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView$a;->a:Lcom/hookedonplay/decoviewlib/DecoView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView$a;->a:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView$a;->a:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
