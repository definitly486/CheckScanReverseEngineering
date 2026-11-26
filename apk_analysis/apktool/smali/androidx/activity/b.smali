.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigationevent/OnBackCompletedFallback;


# instance fields
.field public final synthetic a:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->a:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final onBackCompletedFallback()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/b;->a:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->a(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method
