.class public interface abstract Landroidx/compose/ui/layout/WindowInsetsRulers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->$$INSTANCE:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    sput-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAnimation(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/WindowInsetsAnimation;
.end method

.method public abstract getCurrent()Landroidx/compose/ui/layout/RectRulers;
.end method

.method public abstract getMaximum()Landroidx/compose/ui/layout/RectRulers;
.end method
