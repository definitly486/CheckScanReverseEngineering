.class public abstract Landroidx/compose/foundation/layout/SiblingsAlignedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;,
        Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;
    }
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/ui/Modifier$Node;->$stable:I

    sput v0, Landroidx/compose/foundation/layout/SiblingsAlignedNode;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/SiblingsAlignedNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
.end method
