.class public final Lg02$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo22$b<",
        "Lg02;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Lg02$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg02$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg02$a;->b:Lg02$a;

    return-void
.end method
