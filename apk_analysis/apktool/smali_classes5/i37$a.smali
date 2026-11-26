.class public final Li37$a;
.super Lg37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lg37;

.field public final b:Lj95;


# direct methods
.method public constructor <init>(Lg37;Lj95;)V
    .locals 0

    invoke-direct {p0}, Lg37;-><init>()V

    iput-object p1, p0, Li37$a;->a:Lg37;

    iput-object p2, p0, Li37$a;->b:Lj95;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Li37$a;->a:Lg37;

    invoke-virtual {p0}, Lg37;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Li37$a;->b:Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 0

    iget-object p0, p0, Li37$a;->a:Lg37;

    invoke-virtual {p0, p1}, Lg37;->c(Lvu0;)V

    return-void
.end method
