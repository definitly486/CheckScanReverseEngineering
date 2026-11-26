.class public final synthetic Lj07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lk07;


# direct methods
.method public synthetic constructor <init>(Lk07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj07;->b:Lk07;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Lj07;->b:Lk07;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk07;->c(Z)V

    return-void
.end method
