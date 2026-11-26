.class public final Lf87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# instance fields
.field public final a:Lsl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsl<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf87;->a:Lsl;

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lg87;

    invoke-direct {p2, p1, p3, p0}, Lg87;-><init>(Lox4;Lnd0;Lf87;)V

    return-object p2
.end method
