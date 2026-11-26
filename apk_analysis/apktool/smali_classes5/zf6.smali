.class public abstract Lzf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzf6$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ltf6;


# direct methods
.method public constructor <init>(JLtf6;)V
    .locals 3

    sget-object v0, Lzf6$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkd$n$a$a;

    const-string v1, "Shop"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Shown"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Discounts"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lkd$f$a$b;

    sget-object v1, Lkd$f$a$a;->Coupon:Lkd$f$a$a;

    invoke-direct {v0, v1, p1, p2}, Lkd$f$a$b;-><init>(Lkd$f$a$a;J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lkd$f$a$b;

    sget-object v1, Lkd$f$a$a;->BonusProgram:Lkd$f$a$a;

    invoke-direct {v0, v1, p1, p2}, Lkd$f$a$b;-><init>(Lkd$f$a$a;J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lkd$f$a$b;

    sget-object v1, Lkd$f$a$a;->Partner:Lkd$f$a$a;

    invoke-direct {v0, v1, p1, p2}, Lkd$f$a$b;-><init>(Lkd$f$a$a;J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lkd$f$a$b;

    sget-object v1, Lkd$f$a$a;->Admitad:Lkd$f$a$a;

    invoke-direct {v0, v1, p1, p2}, Lkd$f$a$b;-><init>(Lkd$f$a$a;J)V

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lzf6;->a:J

    iput-object p3, p0, Lzf6;->b:Ltf6;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
