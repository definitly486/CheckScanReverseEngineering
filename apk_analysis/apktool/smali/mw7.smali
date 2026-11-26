.class public final synthetic Lmw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lnw7;


# direct methods
.method public synthetic constructor <init>(Lnw7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmw7;->b:Lnw7;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lmw7;->b:Lnw7;

    invoke-virtual {p0}, Lnw7;->b()V

    return-void
.end method
