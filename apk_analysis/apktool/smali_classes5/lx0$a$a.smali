.class public final Llx0$a$a;
.super Lqj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llx0$a;-><init>(Lun2$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Llx0$a;


# direct methods
.method public constructor <init>(Lv48;Llx0$a;)V
    .locals 0

    iput-object p2, p0, Llx0$a$a;->c:Llx0$a;

    invoke-direct {p0, p1}, Lqj3;-><init>(Lv48;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Llx0$a$a;->c:Llx0$a;

    iget-object v0, v0, Llx0$a;->c:Lun2$c;

    invoke-virtual {v0}, Lun2$c;->close()V

    invoke-super {p0}, Lqj3;->close()V

    return-void
.end method
