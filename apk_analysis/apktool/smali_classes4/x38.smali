.class public final synthetic Lx38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx38;->b:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lx38;->b:Lcom/google/android/material/snackbar/Snackbar;

    invoke-static {p0, p1}, Lcom/google/android/material/snackbar/Snackbar;->b(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View;)V

    return-void
.end method
