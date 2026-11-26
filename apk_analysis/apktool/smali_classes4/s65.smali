.class public final synthetic Ls65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/timepicker/MaterialTimePicker;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/MaterialTimePicker;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls65;->b:Lcom/google/android/material/timepicker/MaterialTimePicker;

    iput-object p2, p0, Ls65;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ls65;->b:Lcom/google/android/material/timepicker/MaterialTimePicker;

    iget-object p0, p0, Ls65;->c:Landroid/view/ViewGroup;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->d(Lcom/google/android/material/timepicker/MaterialTimePicker;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
