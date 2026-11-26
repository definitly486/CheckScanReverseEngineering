.class public final synthetic Lkj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkj4;->a:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    iput-object p2, p0, Lkj4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDateSet(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V
    .locals 6

    iget-object v0, p0, Lkj4;->a:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    iget-object v1, p0, Lkj4;->b:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->e(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V

    return-void
.end method
