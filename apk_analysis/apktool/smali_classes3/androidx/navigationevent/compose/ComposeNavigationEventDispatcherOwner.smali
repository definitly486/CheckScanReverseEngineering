.class final Landroidx/navigationevent/compose/ComposeNavigationEventDispatcherOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigationevent/NavigationEventDispatcherOwner;


# instance fields
.field private final navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventDispatcherOwner;->navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-void
.end method


# virtual methods
.method public getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventDispatcherOwner;->navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-object p0
.end method
