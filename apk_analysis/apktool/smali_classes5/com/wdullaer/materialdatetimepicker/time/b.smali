.class public final synthetic Lcom/wdullaer/materialdatetimepicker/time/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;


# instance fields
.field public final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/b;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    return-void
.end method


# virtual methods
.method public final isValidSelection(I)Z
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/b;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;I)Z

    move-result p0

    return p0
.end method
