.class public final Lrz8$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrz8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ldf4<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lrz8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrz8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lrz8$a;->f:Lrz8$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance p0, Lrq5;

    sget-object v0, Lrz8;->INSTANCE:Lrz8;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialogListener.TransferSuccess"

    invoke-direct {p0, v2, v0, v1}, Lrq5;-><init>(Ljava/lang/String;Ljava/io/Serializable;[Ljava/lang/annotation/Annotation;)V

    return-object p0
.end method
