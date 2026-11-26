.class public final Lkd$g$a$b;
.super Lkd$g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$g$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$g$a$b;

    const-string v1, "Add_1_check"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$g$a$b;->e:Lkd$g$a$b;

    return-void
.end method
