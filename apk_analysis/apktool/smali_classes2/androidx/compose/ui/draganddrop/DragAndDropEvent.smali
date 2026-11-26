.class public final Landroidx/compose/ui/draganddrop/DragAndDropEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final dragEvent:Landroid/view/DragEvent;


# direct methods
.method public constructor <init>(Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropEvent;->dragEvent:Landroid/view/DragEvent;

    return-void
.end method


# virtual methods
.method public final getDragEvent$ui()Landroid/view/DragEvent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropEvent;->dragEvent:Landroid/view/DragEvent;

    return-object p0
.end method
