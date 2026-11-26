.class public final Lmb4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo22$b<",
        "Lmb4;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Lmb4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmb4$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmb4$a;->b:Lmb4$a;

    return-void
.end method
