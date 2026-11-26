.class public final enum Landroidx/compose/material3/WideNavigationRailValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material3/WideNavigationRailValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/compose/material3/WideNavigationRailValue;

.field public static final enum Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

.field public static final enum Expanded:Landroidx/compose/material3/WideNavigationRailValue;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/WideNavigationRailValue;
    .locals 2

    sget-object v0, Landroidx/compose/material3/WideNavigationRailValue;->Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

    sget-object v1, Landroidx/compose/material3/WideNavigationRailValue;->Expanded:Landroidx/compose/material3/WideNavigationRailValue;

    filled-new-array {v0, v1}, [Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/WideNavigationRailValue;

    const-string v1, "Collapsed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/WideNavigationRailValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/WideNavigationRailValue;->Collapsed:Landroidx/compose/material3/WideNavigationRailValue;

    new-instance v0, Landroidx/compose/material3/WideNavigationRailValue;

    const-string v1, "Expanded"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/WideNavigationRailValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/WideNavigationRailValue;->Expanded:Landroidx/compose/material3/WideNavigationRailValue;

    invoke-static {}, Landroidx/compose/material3/WideNavigationRailValue;->$values()[Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/WideNavigationRailValue;->$VALUES:[Landroidx/compose/material3/WideNavigationRailValue;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/WideNavigationRailValue;->$ENTRIES:Lg03;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/compose/material3/WideNavigationRailValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/material3/WideNavigationRailValue;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/WideNavigationRailValue;
    .locals 1

    const-class v0, Landroidx/compose/material3/WideNavigationRailValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/WideNavigationRailValue;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/WideNavigationRailValue;
    .locals 1

    sget-object v0, Landroidx/compose/material3/WideNavigationRailValue;->$VALUES:[Landroidx/compose/material3/WideNavigationRailValue;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/WideNavigationRailValue;

    return-object v0
.end method
