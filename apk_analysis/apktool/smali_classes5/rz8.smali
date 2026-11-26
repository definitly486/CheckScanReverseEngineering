.class public final Lrz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final INSTANCE:Lrz8;

.field public static final synthetic b:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrz8;

    invoke-direct {v0}, Lrz8;-><init>()V

    sput-object v0, Lrz8;->INSTANCE:Lrz8;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Lrz8$a;->f:Lrz8$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lrz8;->b:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lrz8;",
            ">;"
        }
    .end annotation

    sget-object p0, Lrz8;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    return-object p0
.end method
