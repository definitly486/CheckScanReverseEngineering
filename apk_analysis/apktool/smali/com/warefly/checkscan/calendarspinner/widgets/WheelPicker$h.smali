.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$h;->f:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$h;->f:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
