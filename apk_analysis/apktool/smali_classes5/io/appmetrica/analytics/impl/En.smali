.class public final synthetic Lio/appmetrica/analytics/impl/En;
.super Lk8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "insertRecords(Ljava/util/List;)J"

    const/16 v6, 0x8

    const/4 v1, 0x1

    const-class v3, Lio/appmetrica/analytics/impl/Fn;

    const-string v4, "insertRecords"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lk8;->receiver:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/Fn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Fn;->a(Ljava/util/List;)J

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
