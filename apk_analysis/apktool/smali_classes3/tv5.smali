.class public final synthetic Ltv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Landroidx/navigationevent/OnBackInvokedInput;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/OnBackInvokedInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv5;->a:Landroidx/navigationevent/OnBackInvokedInput;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Ltv5;->a:Landroidx/navigationevent/OnBackInvokedInput;

    invoke-static {p0}, Landroidx/navigationevent/OnBackInvokedInput;->a(Landroidx/navigationevent/OnBackInvokedInput;)V

    return-void
.end method
