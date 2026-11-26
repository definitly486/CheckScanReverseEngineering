.class public final Ldfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final d:Lleb;


# direct methods
.method public constructor <init>(Lleb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldfb;->a:Z

    iput-boolean v0, p0, Ldfb;->b:Z

    iput-object p1, p0, Ldfb;->d:Lleb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Ldfb;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfb;->a:Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(D)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, p2, v1}, Lleb;->a(Lcom/google/firebase/encoders/FieldDescriptor;DZ)V

    return-object p0
.end method

.method public final add(F)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 13
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 14
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, v1}, Lleb;->b(Lcom/google/firebase/encoders/FieldDescriptor;FZ)V

    return-object p0
.end method

.method public final add(I)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 15
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 16
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, v1}, Lleb;->d(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0
.end method

.method public final add(J)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 17
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 18
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, p2, v1}, Lleb;->e(Lcom/google/firebase/encoders/FieldDescriptor;JZ)V

    return-object p0
.end method

.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 19
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 20
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, v1}, Lleb;->c(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 21
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 22
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, v1}, Lleb;->d(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0
.end method

.method public final add([B)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 23
    invoke-virtual {p0}, Ldfb;->a()V

    iget-object v0, p0, Ldfb;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v1, p0, Ldfb;->b:Z

    .line 24
    iget-object v2, p0, Ldfb;->d:Lleb;

    invoke-virtual {v2, v0, p1, v1}, Lleb;->c(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0
.end method
