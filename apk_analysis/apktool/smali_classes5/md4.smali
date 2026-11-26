.class public final Lmd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljd4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lmd4;

.field public static final b:Lmd4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmd4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmd4;->a:Lmd4;

    sget-object v0, Lmd4$a;->b:Lmd4$a;

    sput-object v0, Lmd4;->b:Lmd4$a;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->e(Lud2;)Lkc4;

    new-instance p0, Ljd4;

    sget-object v0, Lca8;->a:Lca8;

    sget-object v1, Luc4;->a:Luc4;

    new-instance v2, Luq4;

    invoke-direct {v2, v0, v1}, Luq4;-><init>(Ldf4;Ldf4;)V

    invoke-virtual {v2, p1}, Lw;->deserialize(Lud2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Ljd4;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lmd4;->b:Lmd4$a;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljd4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    sget-object p0, Lca8;->a:Lca8;

    sget-object v0, Luc4;->a:Luc4;

    new-instance v1, Luq4;

    invoke-direct {v1, p0, v0}, Luq4;-><init>(Ldf4;Ldf4;)V

    invoke-virtual {v1, p1, p2}, Lb05;->serialize(Lux2;Ljava/lang/Object;)V

    return-void
.end method
