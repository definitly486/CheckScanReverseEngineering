.class public final Landroidx/navigation/ActivityNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne4<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private data:Landroid/net/Uri;

.field private dataPattern:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/ActivityNavigator;I)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 22
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/ActivityNavigator;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/ActivityNavigator;Lne4;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/ActivityNavigator;",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lef4;",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lne4;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 4

    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lne4;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroidx/navigation/ActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    :cond_0
    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->build()Landroidx/navigation/ActivityNavigator$Destination;

    move-result-object p0

    return-object p0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final getActivityClass()Lne4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lne4<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lne4;

    return-object p0
.end method

.method public final getData()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-object p0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-void
.end method

.method public final setActivityClass(Lne4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->activityClass:Lne4;

    return-void
.end method

.method public final setData(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-void
.end method

.method public final setDataPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/ActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-void
.end method
