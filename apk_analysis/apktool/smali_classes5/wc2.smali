.class public final synthetic Lwc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc2;->b:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    iput p2, p0, Lwc2;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwc2;->b:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    iget p0, p0, Lwc2;->c:I

    invoke-static {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->a(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V

    return-void
.end method
