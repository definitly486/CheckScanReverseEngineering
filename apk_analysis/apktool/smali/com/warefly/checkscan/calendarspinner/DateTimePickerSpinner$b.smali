.class public final Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;->f:Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method
