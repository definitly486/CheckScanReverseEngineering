.class public final synthetic Luc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;


# instance fields
.field public final synthetic a:Lvc1;


# direct methods
.method public synthetic constructor <init>(Lvc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc1;->a:Lvc1;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Luc1;->a:Lvc1;

    invoke-virtual {p0, p1}, Lvc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
