.class public final synthetic Lrs7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:Lv8;


# direct methods
.method public synthetic constructor <init>(Lv8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs7;->b:Lv8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->g:[Lze4;

    iget-object p0, p0, Lrs7;->b:Lv8;

    invoke-virtual {p0, p1}, Lv8;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
