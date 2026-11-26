.class public final synthetic Lcx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field public final synthetic c:[Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx6;->b:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcx6;->c:[Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcx6;->b:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object p0, p0, Lcx6;->c:[Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    return-void
.end method
